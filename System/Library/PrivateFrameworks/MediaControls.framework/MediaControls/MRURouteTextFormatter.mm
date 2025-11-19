@interface MRURouteTextFormatter
- (BOOL)text:(id)a3 fitsInWidth:(double)a4;
- (CGSize)sizeForText:(id)a3;
- (MRURouteTextFormatter)init;
- (MRURouteTextFormatter)initWithConfiguration:(id)a3;
- (id)bestStringForRouteNames:(id)a3 designatedGroupLeaderName:(id)a4 thatFitsWidth:(double)a5;
- (id)formattedRouteNameForDesignatedGroupLeaderName:(id)a3 truncatedDesignatedGroupLeaderName:(id)a4 routeNamesText:(id)a5;
- (id)marketingNames;
- (id)plusSeparatedRouteNames:(id)a3;
- (id)routeNamesSortedLength:(id)a3;
- (id)text:(id)a3 displayAsSiriSuggestion:(BOOL)a4;
- (id)textForRoute:(id)a3;
- (id)textForRoute:(id)a3 textBoundingWidth:(double)a4;
- (id)textForRouteNames:(id)a3;
- (id)textForRouteNames:(id)a3 textBoundingWidth:(double)a4;
- (id)truncateText:(id)a3 by:(int64_t)a4;
- (int64_t)compareLength:(id)a3 with:(id)a4;
@end

@implementation MRURouteTextFormatter

- (MRURouteTextFormatter)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRURouteTextFormatter;
  v6 = [(MRURouteTextFormatter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
  }

  return v7;
}

- (MRURouteTextFormatter)init
{
  v3 = objc_alloc_init(MRURouteTextFormatterConfiguration);
  v4 = [(MRURouteTextFormatter *)self initWithConfiguration:v3];

  return v4;
}

- (id)textForRoute:(id)a3 textBoundingWidth:(double)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 isAppleTVRoute])
  {
    v7 = [v6 designatedGroupLeaderName];
    v8 = [v7 length] != 0;
  }

  else
  {
    v8 = 0;
  }

  if (![v6 isDeviceRoute] || v8)
  {
    v9 = [v6 designatedGroupLeaderName];
  }

  else
  {
    v9 = [MEMORY[0x1E69B09A8] localDeviceLocalizedName];
  }

  v10 = v9;
  if (!-[__CFString length](v9, "length") || ![v6 isAirPlayingToDevice] || !objc_msgSend(v6, "isProxyGroupPlayer"))
  {
    if ([v6 isDeviceRoute] && objc_msgSend(v6, "numberOfOutputDevices") <= 1)
    {

      v10 = v6;
      v15 = [(MRURouteTextFormatterConfiguration *)self->_configuration usesPredictedOutputDevice];
      if (v10 && v15)
      {
        v16 = [(__CFString *)v10 predictedOutputDevice];
        v17 = v16;
        if (v16)
        {
          v18 = [v16 routeName];
          v27[0] = v18;
          v19 = v27;
        }

        else
        {
          v18 = [(__CFString *)v10 routeName];
          v26 = v18;
          v19 = &v26;
        }

        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      }

      else
      {
        v17 = [(__CFString *)v10 routeName];
        v25 = v17;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      }
    }

    else
    {
      v20 = [v6 isSplitRoute];

      if (!v20)
      {
        v13 = [v6 routeNames];
LABEL_29:
        v10 = &stru_1F1445548;
        goto LABEL_30;
      }

      v10 = +[MRUStringsProvider routeNameHeadphonesCount:](MRUStringsProvider, "routeNameHeadphonesCount:", [v6 numberOfOutputDevices]);
      v24 = v10;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    }

LABEL_28:

    goto LABEL_29;
  }

  v11 = objc_alloc(MEMORY[0x1E695DF70]);
  v12 = [v6 routeNames];
  v13 = [v11 initWithArray:v12];

  v14 = [v13 indexOfObject:v10];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v13 removeObjectAtIndex:v14];
  }

  if ([(MRURouteTextFormatterConfiguration *)self->_configuration omitGroupLeaderName])
  {
    goto LABEL_28;
  }

LABEL_30:
  v21 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v13];
  v22 = [(MRURouteTextFormatter *)self bestStringForRouteNames:v21 designatedGroupLeaderName:v10 thatFitsWidth:a4];

  return v22;
}

- (id)textForRoute:(id)a3
{
  configuration = self->_configuration;
  v5 = a3;
  [(MRURouteTextFormatterConfiguration *)configuration textBoundingWidth];
  v6 = [(MRURouteTextFormatter *)self textForRoute:v5 textBoundingWidth:?];

  return v6;
}

- (id)textForRouteNames:(id)a3 textBoundingWidth:(double)a4
{
  v6 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  v7 = [(MRURouteTextFormatter *)self bestStringForRouteNames:v6 designatedGroupLeaderName:&stru_1F1445548 thatFitsWidth:a4];

  return v7;
}

- (id)textForRouteNames:(id)a3
{
  configuration = self->_configuration;
  v5 = a3;
  [(MRURouteTextFormatterConfiguration *)configuration textBoundingWidth];
  v6 = [(MRURouteTextFormatter *)self textForRouteNames:v5 textBoundingWidth:?];

  return v6;
}

- (id)bestStringForRouteNames:(id)a3 designatedGroupLeaderName:(id)a4 thatFitsWidth:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 allObjects];
  v11 = [(MRURouteTextFormatter *)self routeNamesSortedAlphanumeric:v10];

  v12 = [v8 allObjects];
  v13 = [(MRURouteTextFormatter *)self routeNamesSortedLength:v12];

  v14 = [v9 copy];
  v15 = [(MRURouteTextFormatter *)self plusSeparatedRouteNames:v11];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__MRURouteTextFormatter_bestStringForRouteNames_designatedGroupLeaderName_thatFitsWidth___block_invoke;
  aBlock[3] = &unk_1E7663BD0;
  aBlock[4] = self;
  v16 = v9;
  v91 = v16;
  v92 = a5;
  v17 = _Block_copy(aBlock);
  v18 = (v17 + 2);
  v71 = v15;
  v72 = v16;
  v70 = v13;
  if (v17[2](v17, v14, v15))
  {
    v19 = [(MRURouteTextFormatter *)self formattedRouteNameForDesignatedGroupLeaderName:v16 truncatedDesignatedGroupLeaderName:v14 routeNamesText:v15];
LABEL_45:
    v62 = [(MRURouteTextFormatter *)self configuration];
    v64 = -[MRURouteTextFormatter text:displayAsSiriSuggestion:](self, "text:displayAsSiriSuggestion:", v19, [v62 displayAsSiriSuggestion]);
    goto LABEL_46;
  }

  v20 = [v14 length];
  v21 = v20 - 2 * [(MRURouteTextFormatterConfiguration *)self->_configuration minimumEndCharacterCount];
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy_;
  v84 = __Block_byref_object_dispose_;
  v85 = &stru_1F1445548;
  v69 = v11;
  if (v21 >= 1)
  {
    v22 = v72;
    while (1)
    {
      v23 = [v22 isEqualToString:v14] ? 1 : 2;
      v24 = [(MRURouteTextFormatter *)self truncateText:v14 by:v23];

      v25 = [(MRURouteTextFormatter *)self plusSeparatedRouteNames:v13];
      v14 = v24;
      v26 = v81[5];
      v81[5] = v25;

      v27 = v17[2](v17, v24, v81[5]);
      v22 = v72;
      if (v27)
      {
        break;
      }

      if (!--v21)
      {
        goto LABEL_12;
      }
    }

    *(v87 + 24) = 1;
    v28 = v81[5];

    v71 = v28;
  }

LABEL_12:
  if (v87[3])
  {
    goto LABEL_22;
  }

  if ([(MRURouteTextFormatterConfiguration *)self->_configuration allowsMultitruncation])
  {
    v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v13];
    v66 = v8;
    v30 = [v29 firstObject];
    v31 = [v30 length];
    v32 = [(MRURouteTextFormatterConfiguration *)self->_configuration minimumEndCharacterCount];

    *(v87 + 24) = 0;
    v33 = v81[5];
    v81[5] = &stru_1F1445548;

    if (v31 - 2 * v32 >= 1)
    {
      v34 = 2 * v32;
      v35 = MEMORY[0x1E69E9820];
      v36 = __89__MRURouteTextFormatter_bestStringForRouteNames_designatedGroupLeaderName_thatFitsWidth___block_invoke_7;
      v37 = ~v34 + v31;
      v38 = &unk_1E7663BF8;
      v68 = v14;
      do
      {
        v39 = v37;
        v73[0] = v35;
        v73[1] = 3221225472;
        v73[2] = v36;
        v73[3] = v38;
        v74 = v29;
        v75 = self;
        v78 = &v80;
        v77 = v17;
        v76 = v14;
        v79 = &v86;
        [v70 enumerateObjectsUsingBlock:v73];
        v40 = *(v87 + 24);
        if (v40 == 1)
        {
          v41 = self;
          v42 = v17;
          v43 = v36;
          v44 = v35;
          v45 = v18;
          v46 = v29;
          v47 = v38;
          v48 = v81[5];

          v71 = v48;
          v38 = v47;
          v29 = v46;
          v18 = v45;
          v35 = v44;
          v36 = v43;
          v17 = v42;
          self = v41;
          v14 = v68;
        }

        if (v40)
        {
          break;
        }

        v37 = v39 - 1;
      }

      while (v39);
    }

    v8 = v66;
    v11 = v69;
  }

  if (v87[3])
  {
LABEL_22:
    v49 = 0;
  }

  else
  {
    v50 = [v11 firstObject];
    if ([v11 count] < 2)
    {
      v51 = v50;
    }

    else
    {
      v51 = +[MRUStringsProvider routeName:plusCount:](MRUStringsProvider, "routeName:plusCount:", v50, [v11 count] - 1);
    }

    v67 = v51;
    if ((v17[2])(v17, v14))
    {
      v52 = v67;
      v53 = v67;
      v49 = 0;
      v54 = v50;
      v55 = v71;
    }

    else
    {
      v54 = [v11 firstObject];

      v55 = &stru_1F1445548;
      v56 = 1;
      while (1)
      {
        v57 = [v54 length];
        v49 = v56 > v57;
        if (v56 > v57)
        {
          break;
        }

        v58 = [(MRURouteTextFormatter *)self truncateText:v54 by:v56];

        if ([v69 count] < 2)
        {
          v55 = v58;
        }

        else
        {
          v55 = +[MRUStringsProvider routeName:plusCount:](MRUStringsProvider, "routeName:plusCount:", v58, [v69 count] - 1);
        }

        ++v56;
        if (v17[2](v17, v14, v55))
        {
          v59 = v55;
          v55 = v59;
          goto LABEL_36;
        }
      }

      v59 = [v69 firstObject];
LABEL_36:
      v53 = v59;

      v52 = v67;
    }

    v71 = v53;
  }

  _Block_object_dispose(&v80, 8);

  _Block_object_dispose(&v86, 8);
  v60 = [(MRURouteTextFormatter *)self formattedRouteNameForDesignatedGroupLeaderName:v72 truncatedDesignatedGroupLeaderName:v14 routeNamesText:v71];
  v19 = v60;
  if (!v49 || ![v60 length])
  {
    v11 = v69;
    goto LABEL_45;
  }

  v61 = 0;
  v11 = v69;
  while (1)
  {
    v62 = [(MRURouteTextFormatter *)self truncateText:v19 by:++v61];
    v63 = [(MRURouteTextFormatter *)self configuration];
    v64 = -[MRURouteTextFormatter text:displayAsSiriSuggestion:](self, "text:displayAsSiriSuggestion:", v62, [v63 displayAsSiriSuggestion]);

    if ([(MRURouteTextFormatter *)self text:v64 fitsInWidth:a5])
    {
      break;
    }

    if (v61 >= [v19 length])
    {
      goto LABEL_45;
    }
  }

LABEL_46:

  return v64;
}

uint64_t __89__MRURouteTextFormatter_bestStringForRouteNames_designatedGroupLeaderName_thatFitsWidth___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) formattedRouteNameForDesignatedGroupLeaderName:*(a1 + 40) truncatedDesignatedGroupLeaderName:a2 routeNamesText:a3];
  v5 = *(a1 + 32);
  v6 = [v5 configuration];
  v7 = [v5 text:v4 displayAsSiriSuggestion:{objc_msgSend(v6, "displayAsSiriSuggestion")}];

  v8 = [*(a1 + 32) text:v7 fitsInWidth:*(a1 + 48)];
  return v8;
}

void __89__MRURouteTextFormatter_bestStringForRouteNames_designatedGroupLeaderName_thatFitsWidth___block_invoke_7(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = a2;
  v7 = [*(a1 + 32) firstObject];
  v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v9 = [v7 length];
  if (v9 <= [v8 length])
  {
    v10 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v11 = [v17 isEqualToString:v10];

    v12 = v11 ? 1 : 2;
    v13 = [*(a1 + 40) truncateText:v8 by:v12];
    [*(a1 + 32) setObject:v13 atIndexedSubscript:a3];

    v14 = [*(a1 + 40) plusSeparatedRouteNames:*(a1 + 32)];
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    if ((*(*(a1 + 56) + 16))())
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (id)text:(id)a3 displayAsSiriSuggestion:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = [MRUStringsProvider nowPlayingSiriSuggestion:v5];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

- (int64_t)compareLength:(id)a3 with:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 length];
  if (v7 <= [v6 length])
  {
    v9 = [v5 length];
    v8 = v9 < [v6 length];
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (id)routeNamesSortedLength:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__MRURouteTextFormatter_routeNamesSortedLength___block_invoke;
  v5[3] = &unk_1E7663C40;
  v5[4] = self;
  v3 = [a3 sortedArrayUsingComparator:v5];

  return v3;
}

- (id)plusSeparatedRouteNames:(id)a3
{
  v3 = [(MRURouteTextFormatter *)self routeNamesSortedAlphanumeric:a3];
  v4 = +[MRUStringsProvider routeNamePlusSeparator];
  v5 = [v3 componentsJoinedByString:v4];

  return v5;
}

- (id)formattedRouteNameForDesignatedGroupLeaderName:(id)a3 truncatedDesignatedGroupLeaderName:(id)a4 routeNamesText:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 copy];
  v12 = [(MRURouteTextFormatter *)self marketingNames];
  v13 = [v12 containsObject:v8];

  if (v13)
  {
    v14 = v8;
  }

  else
  {
    v14 = v9;
  }

  v15 = v14;
  if ([v11 length] && objc_msgSend(v15, "length"))
  {
    v16 = [MRUStringsProvider routeNameArrowFormat:v15 rightSideText:v11];
  }

  else if ([v15 length])
  {
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v10;
    }

    v16 = v17;
  }

  else
  {
    if (![v10 length])
    {
      goto LABEL_15;
    }

    v16 = v10;
  }

  v18 = v16;

  v11 = v18;
LABEL_15:
  if ([(MRURouteTextFormatterConfiguration *)self->_configuration forcesUppercaseText])
  {
    v31 = v10;
    v19 = [v11 localizedUppercaseString];
    v20 = [v19 mutableCopy];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v21 = [(MRURouteTextFormatter *)self marketingNames];
    v22 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v33;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v32 + 1) + 8 * i);
          v27 = [v11 rangeOfString:v26];
          if (v27 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v20 replaceCharactersInRange:v27 withString:{v28, v26}];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v23);
    }

    v29 = [v20 copy];
    v11 = v29;
    v10 = v31;
  }

  return v11;
}

- (CGSize)sizeForText:(id)a3
{
  v4 = a3;
  v5 = [(MRURouteTextFormatterConfiguration *)self->_configuration font];

  if (v5)
  {
    v6 = [(MRURouteTextFormatterConfiguration *)self->_configuration font];
    [v4 mru_textSizeForFont:v6 boundingSize:{1.79769313e308, 1.79769313e308}];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (BOOL)text:(id)a3 fitsInWidth:(double)a4
{
  [(MRURouteTextFormatter *)self sizeForText:a3];
  if (v5 < a4)
  {
    return 1;
  }

  v7 = v5 - a4;
  if (v7 < 0.0)
  {
    v7 = -v7;
  }

  return v7 < 0.00000011920929;
}

- (id)marketingNames
{
  if (marketingNames_onceToken != -1)
  {
    [MRURouteTextFormatter marketingNames];
  }

  v3 = marketingNames_marketingNames;

  return v3;
}

void __39__MRURouteTextFormatter_marketingNames__block_invoke()
{
  v0 = marketingNames_marketingNames;
  marketingNames_marketingNames = &unk_1F148B2F8;
}

- (id)truncateText:(id)a3 by:(int64_t)a4
{
  v6 = a3;
  v7 = [(MRURouteTextFormatterConfiguration *)self->_configuration truncationMode];
  if (!v7)
  {
    v18 = [v6 length];
    v19 = v18 - a4;
    if (v19 < [(MRURouteTextFormatterConfiguration *)self->_configuration minimumEndCharacterCount])
    {
      v20 = [(MRURouteTextFormatterConfiguration *)self->_configuration minimumEndCharacterCount];
      if (v18 >= v20)
      {
        v19 = v20;
      }

      else
      {
        v19 = v18;
      }
    }

    v13 = [v6 substringWithRange:{0, v19 & ~(v19 >> 63)}];
    v21 = MEMORY[0x1E696AEC0];
    v14 = +[MRUStringsProvider routeNameEllipsisString];
    v17 = [v21 stringWithFormat:@"%@%@", v13, v14];
    goto LABEL_11;
  }

  if (v7 == 1)
  {
    v8 = [v6 length];
    if (v8 - (a4 + 2 * [(MRURouteTextFormatterConfiguration *)self->_configuration minimumEndCharacterCount]) <= 0)
    {
      v9 = [v6 length];
      a4 = v9 - 2 * [(MRURouteTextFormatterConfiguration *)self->_configuration minimumEndCharacterCount];
    }

    v10 = vcvtpd_s64_f64(vcvtd_n_f64_u64([v6 length], 1uLL));
    v11 = vcvtd_n_f64_s64(a4, 1uLL);
    v12 = (v11 + v10);
    v13 = [v6 substringWithRange:{0, (v10 - v11)}];
    v14 = [v6 substringWithRange:{v12, objc_msgSend(v6, "length") - v12}];
    v15 = MEMORY[0x1E696AEC0];
    v16 = +[MRUStringsProvider routeNameEllipsisString];
    v17 = [v15 stringWithFormat:@"%@%@%@", v13, v16, v14];

LABEL_11:
    goto LABEL_13;
  }

  v17 = 0;
LABEL_13:

  return v17;
}

@end