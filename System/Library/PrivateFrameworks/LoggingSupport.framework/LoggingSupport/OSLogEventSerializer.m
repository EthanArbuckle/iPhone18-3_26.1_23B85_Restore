@interface OSLogEventSerializer
- (NSPredicate)filterPredicate;
- (OSLogEventSerializer)initWithSource:(id)a3 dataProcessingBlock:(id)a4 completionBlock:(id)a5;
- (OSLogEventSource)source;
- (OS_dispatch_queue)target;
- (id)_arrayForDecomposedMessage:(id)a3 indicesToRedact:(id)a4;
- (id)_dictForArg:(id)a3 shouldRedactValue:(BOOL)a4;
- (id)_dictForDecomposedMessage:(id)a3 indicesToRedact:(id)a4;
- (id)_dictForPlaceholder:(id)a3;
- (id)_dictionaryForProxy:(id)a3;
- (unint64_t)flags;
- (void)_completeBatch:(id)a3;
- (void)_serializeEvent:(id)a3;
- (void)invalidate;
- (void)serializeFromDate:(id)a3;
- (void)serializeFromDate:(id)a3 toDate:(id)a4;
- (void)serializeFromLastBoot;
- (void)serializeFromPosition:(id)a3;
- (void)setFilterPredicate:(id)a3;
- (void)setFlags:(unint64_t)a3;
- (void)setTarget:(id)a3;
@end

@implementation OSLogEventSerializer

- (void)_completeBatch:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v15[0] = @"Version";
  v15[1] = @"Events";
  v16[0] = &unk_2841B9228;
  v6 = [(OSLogEventSerializer *)self curBatchDictionaries];
  v16[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v14 = 0;
  v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:v7 format:200 options:0 error:&v14];
  v9 = v14;
  if (!v8)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:616 description:@"Failed to serialize to plist format"];
  }

  v5[2](v5, v8);
  self->_curBatchSize = 0;
  v10 = [MEMORY[0x277CBEB18] array];
  curBatchDictionaries = self->_curBatchDictionaries;
  self->_curBatchDictionaries = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_dictionaryForProxy:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v14 = 0;
    goto LABEL_123;
  }

  v5 = [MEMORY[0x277CBEB38] dictionary];
  argumentRedactionBlock = self->_argumentRedactionBlock;
  if (argumentRedactionBlock)
  {
    v7 = argumentRedactionBlock[2](argumentRedactionBlock, v4);
    v8 = v7;
    if (v7)
    {
      if ([v7 count])
      {
        v9 = [v8 firstIndex];
        v10 = [v4 decomposedMessage];
        v11 = [v10 placeholderCount];

        if (v9 < v11)
        {
          v12 = [(OSLogEventSerializer *)self metadata];
          v13 = [v12 indexForString:@"<value-redacted>"];
          [v5 setObject:v13 forKeyedSubscript:@"cm"];
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v15 = [v4 composedMessage];

  if (!v15)
  {
    goto LABEL_12;
  }

  v12 = [(OSLogEventSerializer *)self metadata];
  v13 = [v4 composedMessage];
  v16 = [v12 indexForString:v13];
  [v5 setObject:v16 forKeyedSubscript:@"cm"];

LABEL_11:
LABEL_12:
  v17 = [v4 processImagePath];

  if (v17)
  {
    v18 = [(OSLogEventSerializer *)self metadata];
    v19 = [v4 processImagePath];
    v20 = [v18 indexForString:v19];
    [v5 setObject:v20 forKeyedSubscript:@"pip"];
  }

  v21 = [v4 process];

  if (v21)
  {
    v22 = [(OSLogEventSerializer *)self metadata];
    v23 = [v4 process];
    v24 = [v22 indexForString:v23];
    [v5 setObject:v24 forKeyedSubscript:@"p"];
  }

  v25 = [v4 senderImagePath];

  if (v25)
  {
    v26 = [(OSLogEventSerializer *)self metadata];
    v27 = [v4 senderImagePath];
    v28 = [v26 indexForString:v27];
    [v5 setObject:v28 forKeyedSubscript:@"sip"];
  }

  v29 = [v4 sender];

  if (v29)
  {
    v30 = [(OSLogEventSerializer *)self metadata];
    v31 = [v4 sender];
    v32 = [v30 indexForString:v31];
    [v5 setObject:v32 forKeyedSubscript:@"send"];
  }

  if ([v4 type])
  {
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "type")}];
    [v5 setObject:v33 forKeyedSubscript:@"t"];
  }

  if ([v4 logType])
  {
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "logType")}];
    [v5 setObject:v34 forKeyedSubscript:@"lt"];
  }

  if ([v4 size])
  {
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v4, "size")}];
    [v5 setObject:v35 forKeyedSubscript:@"s"];
  }

  if ([v4 timeToLive])
  {
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "timeToLive")}];
    [v5 setObject:v36 forKeyedSubscript:@"ttl"];
  }

  if ([v4 traceIdentifier])
  {
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "traceIdentifier")}];
    [v5 setObject:v37 forKeyedSubscript:@"ti"];
  }

  if ([v4 threadIdentifier])
  {
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "threadIdentifier")}];
    [v5 setObject:v38 forKeyedSubscript:@"tid"];
  }

  if ([v4 processIdentifier])
  {
    v39 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "processIdentifier")}];
    [v5 setObject:v39 forKeyedSubscript:@"pid"];
  }

  if ([v4 activityIdentifier])
  {
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "activityIdentifier")}];
    [v5 setObject:v40 forKeyedSubscript:@"aid"];
  }

  if ([v4 parentActivityIdentifier])
  {
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "parentActivityIdentifier")}];
    [v5 setObject:v41 forKeyedSubscript:@"paid"];
  }

  if ([v4 transitionActivityIdentifier])
  {
    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "transitionActivityIdentifier")}];
    [v5 setObject:v42 forKeyedSubscript:@"tai"];
  }

  if ([v4 continuousNanosecondsSinceBoot])
  {
    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "continuousNanosecondsSinceBoot")}];
    [v5 setObject:v43 forKeyedSubscript:@"ns"];
  }

  if ([v4 machContinuousTimestamp])
  {
    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "machContinuousTimestamp")}];
    [v5 setObject:v44 forKeyedSubscript:@"mct"];
  }

  if ([v4 senderImageOffset])
  {
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "senderImageOffset")}];
    [v5 setObject:v45 forKeyedSubscript:@"sio"];
  }

  v46 = [v4 bootUUID];

  if (v46)
  {
    v47 = [v4 bootUUID];
    v48 = _dataForUUID(v47);
    [v5 setObject:v48 forKeyedSubscript:@"b"];
  }

  v49 = [v4 processImageUUID];

  if (v49)
  {
    v50 = [v4 processImageUUID];
    v51 = _dataForUUID(v50);
    [v5 setObject:v51 forKeyedSubscript:@"piu"];
  }

  v52 = [v4 senderImageUUID];

  if (v52)
  {
    v53 = [v4 senderImageUUID];
    v54 = _dataForUUID(v53);
    [v5 setObject:v54 forKeyedSubscript:@"siu"];
  }

  if ([v4 unixDate])
  {
    v55 = _dictForTimeval([v4 unixDate]);

    if (v55)
    {
      v56 = _dictForTimeval([v4 unixDate]);
      [v5 setObject:v56 forKeyedSubscript:@"ud"];
    }
  }

  if ([v4 unixTimeZone])
  {
    v57 = _dictForTimezone([v4 unixTimeZone]);

    if (v57)
    {
      v58 = _dictForTimezone([v4 unixTimeZone]);
      [v5 setObject:v58 forKeyedSubscript:@"utz"];
    }
  }

  v59 = [v4 backtrace];
  if (v59)
  {
    v60 = v59;
    v61 = [v4 backtrace];
    v62 = [v61 frames];
    v63 = [v62 count];

    if (v63 >= 2)
    {
      v64 = [v4 backtrace];
      v65 = _dictArrayForBacktrace(v64);

      if (v65)
      {
        v66 = [v4 backtrace];
        v67 = _dictArrayForBacktrace(v66);
        [v5 setObject:v67 forKeyedSubscript:@"bt"];
      }
    }
  }

  v68 = [v4 type];
  if (v68 > 1535)
  {
    if (v68 != 1536)
    {
      if (v68 != 1792)
      {
        if (v68 != 2048)
        {
          goto LABEL_122;
        }

        v69 = [v4 metricLabel];

        if (v69)
        {
          v70 = [(OSLogEventSerializer *)self metadata];
          v71 = [v4 metricLabel];
          v72 = [v70 indexForString:v71];
          [v5 setObject:v72 forKeyedSubscript:@"mtl"];
        }

        v73 = [v4 metricDimensions];

        if (v73)
        {
          v74 = [v4 metricDimensions];
          [v5 setObject:v74 forKeyedSubscript:@"mtdi"];
        }

        v75 = [v4 metricMetadata];

        if (v75)
        {
          v76 = [v4 metricMetadata];
          [v5 setObject:v76 forKeyedSubscript:@"mtm"];
        }

        v77 = [v4 metricData];

        if (v77)
        {
          v78 = [v4 metricData];
          [v5 setObject:v78 forKeyedSubscript:@"mtd"];
        }

        v79 = [v4 subsystem];

        if (v79)
        {
          v80 = [(OSLogEventSerializer *)self metadata];
          v81 = [v4 subsystem];
          v82 = [v80 indexForString:v81];
          [v5 setObject:v82 forKeyedSubscript:@"sub"];
        }

        v83 = [v4 category];

        if (!v83)
        {
          goto LABEL_122;
        }

        v84 = [(OSLogEventSerializer *)self metadata];
        v85 = [v4 category];
        v86 = [v84 indexForString:v85];
        [v5 setObject:v86 forKeyedSubscript:@"cat"];

        goto LABEL_121;
      }

      if ([v4 lossStartMachContinuousTimestamp])
      {
        v109 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "lossStartMachContinuousTimestamp")}];
        [v5 setObject:v109 forKeyedSubscript:@"lsmct"];
      }

      if ([v4 lossEndMachContinuousTimestamp])
      {
        v110 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "lossEndMachContinuousTimestamp")}];
        [v5 setObject:v110 forKeyedSubscript:@"lemct"];
      }

      if ([v4 lossStartUnixDate])
      {
        v111 = _dictForTimeval([v4 lossStartUnixDate]);

        if (v111)
        {
          v112 = _dictForTimeval([v4 lossStartUnixDate]);
          [v5 setObject:v112 forKeyedSubscript:@"lsud"];
        }
      }

      if ([v4 lossEndUnixDate])
      {
        v113 = _dictForTimeval([v4 lossEndUnixDate]);

        if (v113)
        {
          v114 = _dictForTimeval([v4 lossEndUnixDate]);
          [v5 setObject:v114 forKeyedSubscript:@"leud"];
        }
      }

      if ([v4 lossStartUnixTimeZone])
      {
        v115 = _dictForTimezone([v4 lossStartUnixTimeZone]);

        if (v115)
        {
          v116 = _dictForTimezone([v4 lossStartUnixTimeZone]);
          [v5 setObject:v116 forKeyedSubscript:@"lsutz"];
        }
      }

      if ([v4 lossEndUnixTimeZone])
      {
        v117 = _dictForTimezone([v4 lossEndUnixTimeZone]);

        if (v117)
        {
          v118 = _dictForTimezone([v4 lossEndUnixTimeZone]);
          [v5 setObject:v118 forKeyedSubscript:@"leutz"];
        }
      }

      v119 = _dictForLossCount([v4 lossCount]);

      if (!v119)
      {
        goto LABEL_122;
      }

      v84 = _dictForLossCount([v4 lossCount]);
      v88 = @"lc";
      goto LABEL_120;
    }

    if ([v4 signpostIdentifier])
    {
      v89 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "signpostIdentifier")}];
      [v5 setObject:v89 forKeyedSubscript:@"si"];
    }

    if ([v4 signpostType])
    {
      v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "signpostType")}];
      [v5 setObject:v90 forKeyedSubscript:@"st"];
    }

    if ([v4 signpostScope])
    {
      v91 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "signpostScope")}];
      [v5 setObject:v91 forKeyedSubscript:@"ss"];
    }

    v92 = [v4 signpostName];

    if (v92)
    {
      v93 = [(OSLogEventSerializer *)self metadata];
      v94 = [v4 signpostName];
      v95 = [v93 indexForString:v94];
      [v5 setObject:v95 forKeyedSubscript:@"sn"];
    }

    goto LABEL_94;
  }

  if (v68 == 513)
  {
    if ([v4 creatorActivityIdentifier])
    {
      v87 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "creatorActivityIdentifier")}];
      [v5 setObject:v87 forKeyedSubscript:@"cai"];
    }

    if (![v4 creatorProcessUniqueIdentifier])
    {
      goto LABEL_122;
    }

    v84 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "creatorProcessUniqueIdentifier")}];
    v88 = @"cpui";
    goto LABEL_120;
  }

  if (v68 != 768)
  {
    if (v68 != 1024)
    {
      goto LABEL_122;
    }

LABEL_94:
    v96 = [v4 subsystem];

    if (v96)
    {
      v97 = [(OSLogEventSerializer *)self metadata];
      v98 = [v4 subsystem];
      v99 = [v97 indexForString:v98];
      [v5 setObject:v99 forKeyedSubscript:@"sub"];
    }

    v100 = [v4 category];

    if (v100)
    {
      v101 = [(OSLogEventSerializer *)self metadata];
      v102 = [v4 category];
      v103 = [v101 indexForString:v102];
      [v5 setObject:v103 forKeyedSubscript:@"cat"];
    }
  }

  v104 = [v4 formatString];

  if (v104)
  {
    v105 = [(OSLogEventSerializer *)self metadata];
    v106 = [v4 formatString];
    v107 = [v105 indexForString:v106];
    [v5 setObject:v107 forKeyedSubscript:@"f"];
  }

  v108 = [v4 decomposedMessage];
  v84 = [(OSLogEventSerializer *)self _dictForDecomposedMessage:v108 indicesToRedact:v8];

  if (!v84)
  {
    goto LABEL_121;
  }

  v88 = @"dm";
LABEL_120:
  [v5 setObject:v84 forKeyedSubscript:v88];
LABEL_121:

LABEL_122:
  v14 = v5;

LABEL_123:

  return v14;
}

- (id)_dictForDecomposedMessage:(id)a3 indicesToRedact:(id)a4
{
  v17[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if ([v6 placeholderCount])
    {
      v16[0] = @"pc";
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "placeholderCount")}];
      v17[0] = v8;
      v16[1] = @"s";
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "state")}];
      v17[1] = v9;
      v16[2] = @"seg";
      v10 = [(OSLogEventSerializer *)self _arrayForDecomposedMessage:v6 indicesToRedact:v7];
      v17[2] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    }

    else
    {
      v14[0] = @"pc";
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "placeholderCount")}];
      v14[1] = @"s";
      v15[0] = v8;
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "state")}];
      v15[1] = v9;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_arrayForDecomposedMessage:(id)a3 indicesToRedact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  [v6 placeholderCount];
  v9 = 0;
  do
  {
    v10 = -[OSLogEventSerializer _dictForDecomposedMessage:index:shouldRedact:](self, "_dictForDecomposedMessage:index:shouldRedact:", v6, v9, [v7 containsIndex:v9]);
    if (!v10)
    {
      break;
    }

    v11 = v10;
    [v8 addObject:v10];

    ++v9;
  }

  while (v9 <= [v6 placeholderCount]);

  return v8;
}

- (id)_dictForArg:(id)a3 shouldRedactValue:(BOOL)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  if (a4)
  {
    v8 = 2;
  }

  else
  {
    v8 = [v6 availability];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [v7 setObject:v9 forKeyedSubscript:@"a"];

  if ([v6 availability])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "availability")}];
    [v7 setObject:v10 forKeyedSubscript:@"a"];
  }

  if ([v6 privacy])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "privacy")}];
    [v7 setObject:v11 forKeyedSubscript:@"p"];
  }

  if ([v6 category])
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "category")}];
    [v7 setObject:v12 forKeyedSubscript:@"c"];
  }

  if ([v6 category] == 1)
  {
    if ([v6 scalarCategory])
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "scalarCategory")}];
      [v7 setObject:v13 forKeyedSubscript:@"sc"];
    }

    if ([v6 scalarType])
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "scalarType")}];
      [v7 setObject:v14 forKeyedSubscript:@"st"];
    }
  }

  if (v8 == 3 || !v8)
  {
    v15 = [v6 objectRepresentation];
    if (v15)
    {
      v16 = v15;
      if ([v6 category] != 2 || (-[OSLogEventSerializer metadata](self, "metadata"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "indexForString:", v16), v18 = objc_claimAutoreleasedReturnValue(), v16, v17, (v16 = v18) != 0))
      {
        [v7 setObject:v16 forKeyedSubscript:@"or"];
      }
    }
  }

  return v7;
}

- (id)_dictForPlaceholder:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [v4 rawString];
  if (v6)
  {
    v7 = [(OSLogEventSerializer *)self metadata];
    v8 = [v7 indexForString:v6];
    [v5 setObject:v8 forKeyedSubscript:@"rs"];
  }

  v9 = [v4 tokens];
  v10 = v9;
  if (v9 && [v9 count])
  {
    v31 = v6;
    v11 = [MEMORY[0x277CBEB18] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v30 = v10;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          v18 = [(OSLogEventSerializer *)self metadata];
          v19 = [v18 indexForString:v17];
          [v11 addObject:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v14);
    }

    [v5 setObject:v11 forKeyedSubscript:@"t"];
    v10 = v30;
    v6 = v31;
  }

  v20 = [v4 typeNamespace];
  if (v20)
  {
    v21 = [(OSLogEventSerializer *)self metadata];
    v22 = [v21 indexForString:v20];
    [v5 setObject:v22 forKeyedSubscript:@"tn"];
  }

  v23 = [v4 type];
  if (v23)
  {
    v24 = [(OSLogEventSerializer *)self metadata];
    v25 = [v24 indexForString:v23];
    [v5 setObject:v25 forKeyedSubscript:@"ty"];
  }

  v26 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "width")}];
  [v5 setObject:v26 forKeyedSubscript:@"w"];

  v27 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "precision")}];
  [v5 setObject:v27 forKeyedSubscript:@"p"];

  v28 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_serializeEvent:(id)a3
{
  v14 = a3;
  v5 = [(OSLogEventSerializer *)self metadata];
  v6 = [v5 firstDate];

  if (!v6)
  {
    v7 = [v14 date];
    v8 = [(OSLogEventSerializer *)self metadata];
    [v8 setFirstDate:v7];
  }

  v9 = [v14 date];
  v10 = [(OSLogEventSerializer *)self metadata];
  [v10 setLastDate:v9];

  [(OSLogEventSerializer *)self setCurBatchSize:[(OSLogEventSerializer *)self curBatchSize]+ 1];
  ++self->_serializedEventCount;
  v11 = [(OSLogEventSerializer *)self _dictionaryForProxy:v14];
  if (!v11)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:307 description:@"Encountered serialization failure"];
  }

  v12 = [(OSLogEventSerializer *)self curBatchDictionaries];
  [v12 addObject:v11];
}

- (void)invalidate
{
  v2 = [(OSLogEventSerializer *)self stream];
  [v2 invalidate];
}

- (void)serializeFromPosition:(id)a3
{
  v4 = a3;
  v5 = [(OSLogEventSerializer *)self stream];
  [v5 activateStreamFromPosition:v4];
}

- (void)serializeFromLastBoot
{
  v2 = [(OSLogEventSerializer *)self stream];
  [v2 activateStreamFromLastBoot];
}

- (void)serializeFromDate:(id)a3 toDate:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(OSLogEventSerializer *)self stream];
  v8 = v11;
  if (v11)
  {
    if (v6)
    {
LABEL_3:
      [v7 activateStreamFromDate:v8 toDate:v6];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [MEMORY[0x277CBEAA8] distantPast];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v9 = [(OSLogEventStream *)self->_stream source];
  v10 = [v9 newestDate];
  [v7 activateStreamFromDate:v8 toDate:v10];

LABEL_6:
  if (!v11)
  {
  }
}

- (void)serializeFromDate:(id)a3
{
  v7 = a3;
  v4 = [(OSLogEventSerializer *)self stream];
  v5 = v4;
  if (v7)
  {
    [v4 activateStreamFromDate:v7];
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] distantPast];
    [v5 activateStreamFromDate:v6];
  }
}

- (OSLogEventSource)source
{
  v2 = [(OSLogEventSerializer *)self stream];
  v3 = [v2 source];

  return v3;
}

- (OS_dispatch_queue)target
{
  v2 = [(OSLogEventSerializer *)self stream];
  v3 = [v2 target];

  return v3;
}

- (void)setTarget:(id)a3
{
  v4 = a3;
  v5 = [(OSLogEventSerializer *)self stream];
  [v5 setTarget:v4];
}

- (NSPredicate)filterPredicate
{
  v2 = [(OSLogEventSerializer *)self stream];
  v3 = [v2 filterPredicate];

  return v3;
}

- (void)setFilterPredicate:(id)a3
{
  v4 = a3;
  v5 = [(OSLogEventSerializer *)self stream];
  [v5 setFilterPredicate:v4];
}

- (unint64_t)flags
{
  v2 = [(OSLogEventSerializer *)self stream];
  v3 = [v2 flags];

  return v3;
}

- (void)setFlags:(unint64_t)a3
{
  v4 = [(OSLogEventSerializer *)self stream];
  [v4 setFlags:a3];
}

- (OSLogEventSerializer)initWithSource:(id)a3 dataProcessingBlock:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v12 = 0;
  if (v9 && v10)
  {
    v31.receiver = self;
    v31.super_class = OSLogEventSerializer;
    self = [(OSLogEventSerializer *)&v31 init];
    if (!self)
    {
LABEL_6:
      self = self;
      v12 = self;
      goto LABEL_7;
    }

    v13 = [[OSLogEventStream alloc] initWithSource:v8];
    stream = self->_stream;
    self->_stream = v13;

    self->_maxLogEventBatchSize = 1000;
    v15 = [MEMORY[0x277CBEB18] array];
    curBatchDictionaries = self->_curBatchDictionaries;
    self->_curBatchDictionaries = v15;

    v17 = objc_alloc_init(_OSLogEventSerializationMetadata);
    metadata = self->_metadata;
    self->_metadata = v17;

    v12 = [(OSLogEventSerializer *)self stream];

    if (v12)
    {
      objc_initWeak(&location, self);
      v19 = self->_stream;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __75__OSLogEventSerializer_initWithSource_dataProcessingBlock_completionBlock___block_invoke;
      v27[3] = &unk_2787AEDD8;
      objc_copyWeak(&v29, &location);
      v20 = v9;
      v28 = v20;
      [(OSLogEventStreamBase *)v19 setEventHandler:v27];
      v21 = self->_stream;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __75__OSLogEventSerializer_initWithSource_dataProcessingBlock_completionBlock___block_invoke_2;
      v23[3] = &unk_2787AEE00;
      objc_copyWeak(&v26, &location);
      v24 = v20;
      v25 = v11;
      [(OSLogEventStreamBase *)v21 setInvalidationHandler:v23];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
      goto LABEL_6;
    }
  }

LABEL_7:

  return v12;
}

void __75__OSLogEventSerializer_initWithSource_dataProcessingBlock_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _serializeEvent:v3];

  if ([WeakRetained _isBatchCompleted])
  {
    [WeakRetained _completeBatch:*(a1 + 32)];
  }
}

void __75__OSLogEventSerializer_initWithSource_dataProcessingBlock_completionBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained curBatchSize])
  {
    [WeakRetained _completeBatch:*(a1 + 32)];
  }

  v4 = [WeakRetained flags];
  v5 = [WeakRetained metadata];
  [v5 setFlags:v4];

  v6 = [WeakRetained filterPredicate];
  v7 = [v6 description];
  v8 = [WeakRetained metadata];
  [v8 setFilterPredicateDescription:v7];

  v9 = [WeakRetained maxLogEventBatchSize];
  v10 = [WeakRetained metadata];
  [v10 setMaxLogEventBatchSize:v9];

  v11 = [WeakRetained serializedEventCount];
  v12 = [WeakRetained metadata];
  [v12 setSerializedEventCount:v11];

  v13 = *(a1 + 40);
  v14 = [WeakRetained metadata];
  v15 = [v14 dataRepresentation];
  (*(v13 + 16))(v13, v15, a2);
}

@end