@interface ConfusionPairBuilder
+ (void)generateConfusionPairsWithUUID:(id)a3 parameters:(id)a4 language:(id)a5 task:(id)a6 samplingRate:(unint64_t)a7 recognizedNbest:(id)a8 recognizedText:(id)a9 correctedText:(id)a10 selectedAlternatives:(id)a11 completion:(id)a12;
+ (void)initialize;
@end

@implementation ConfusionPairBuilder

+ (void)generateConfusionPairsWithUUID:(id)a3 parameters:(id)a4 language:(id)a5 task:(id)a6 samplingRate:(unint64_t)a7 recognizedNbest:(id)a8 recognizedText:(id)a9 correctedText:(id)a10 selectedAlternatives:(id)a11 completion:(id)a12
{
  v16 = a3;
  v17 = a4;
  v105 = a5;
  v104 = a6;
  v107 = a8;
  v106 = a9;
  v102 = a10;
  v18 = v17;
  v103 = a11;
  v101 = a12;
  v19 = qword_10003FFB0;
  if (os_log_type_enabled(qword_10003FFB0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v136 = v17;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Confusion Pair Builder: Start generating confusion pairs with parameters:%@", buf, 0xCu);
  }

  v21 = v104;
  v20 = v105;
  if ([v16 length])
  {
    if ([v105 length])
    {
      v22 = [v104 length];
      if (a7)
      {
        if (v22 && [v107 count])
        {
          v23 = [v107 firstObject];
          if ([v23 count])
          {
            v24 = [v106 length];

            if (v24)
            {
              v99 = v18;
              v25 = objc_alloc_init(NSMutableArray);
              v26 = objc_alloc_init(NSMutableSet);
              v97 = v16;
              v27 = v16;
              v28 = v103;
              v110 = v26;
              v114 = v25;
              v128 = 0u;
              v129 = 0u;
              v130 = 0u;
              v131 = 0u;
              v115 = [v28 countByEnumeratingWithState:&v128 objects:buf count:16];
              v109 = v27;
              if (v115)
              {
                v29 = *v129;
                v108 = v28;
                v111 = *v129;
                do
                {
                  for (i = 0; i != v115; i = i + 1)
                  {
                    if (*v129 != v29)
                    {
                      objc_enumerationMutation(v28);
                    }

                    v31 = *(*(&v128 + 1) + 8 * i);
                    v32 = [v31 objectForKeyedSubscript:{@"replacementText", v97}];
                    v33 = [v32 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];

                    v34 = [v31 objectForKeyedSubscript:@"originalText"];
                    v35 = [v34 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];

                    if ([v33 length] && objc_msgSend(v35, "length"))
                    {
                      v36 = [[ConfusionPairAligner alloc] initWithUttId:v27 recognizedText:v35 correctedText:v33 errorType:1 editMethod:1];
                      v37 = v36;
                      v38 = v114;
                      if (v36)
                      {
                        v39 = [(ConfusionPairAligner *)v36 confusionPairs];
                        [v110 addObjectsFromArray:v39];
                        v126 = 0u;
                        v127 = 0u;
                        v124 = 0u;
                        v125 = 0u;
                        v40 = v39;
                        v41 = [v40 countByEnumeratingWithState:&v124 objects:v134 count:16];
                        if (v41)
                        {
                          v42 = v41;
                          v43 = *v125;
                          do
                          {
                            for (j = 0; j != v42; j = j + 1)
                            {
                              if (*v125 != v43)
                              {
                                objc_enumerationMutation(v40);
                              }

                              v45 = *(*(&v124 + 1) + 8 * j);
                              [v45 numInsertion];
                              [v45 numDeletion];
                              [v45 numSubstitution];
                            }

                            v42 = [v40 countByEnumeratingWithState:&v124 objects:v134 count:16];
                          }

                          while (v42);
                        }

                        v38 = v114;
                        v28 = v108;
                        v27 = v109;
                      }

                      v46 = [[ConfusionPair alloc] initWithUttId:v27];
                      [(ConfusionPair *)v46 addRecognizedToken:v35 correctedToken:v33];
                      [(ConfusionPair *)v46 setEditMethod:1];
                      [(ConfusionPair *)v46 setErrorType:1];
                      [v38 addObject:v46];

                      v29 = v111;
                    }
                  }

                  v115 = [v28 countByEnumeratingWithState:&v128 objects:buf count:16];
                }

                while (v115);
              }

              v47 = qword_10003FFB0;
              if (os_log_type_enabled(qword_10003FFB0, OS_LOG_TYPE_INFO))
              {
                v48 = v47;
                v49 = [v114 count];
                v50 = [v110 count];
                *buf = 134218240;
                v136 = v49;
                v137 = 2048;
                v138 = v50;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Confusion Pair Builder: Populated confusion pairs for alternative selection, count: %lu, unique count: %lu", buf, 0x16u);
              }

              v51 = [v102 length];
              v16 = v98;
              v18 = v99;
              v21 = v104;
              v20 = v105;
              if (!v51)
              {
                v59 = qword_10003FFB0;
                if (os_log_type_enabled(qword_10003FFB0, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "Confusion Pair Builder: Corrected text is empty", buf, 2u);
                }

                v56 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:356 userInfo:0];
                v57 = v101;
                v58 = v114;
                (*(v101 + 2))(v101, v114, v56);
                v53 = v102;
                v52 = v106;
                goto LABEL_98;
              }

              v52 = [v106 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];

              v53 = [v102 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];

              if ([v52 isEqualToString:v53])
              {
                v54 = qword_10003FFB0;
                if (os_log_type_enabled(qword_10003FFB0, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "Confusion Pair Builder: Skipping confusion pair building as corrected text is the same as recognized text", buf, 2u);
                }

                v55 = 356;
LABEL_36:
                v56 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:v55 userInfo:0];
                v57 = v101;
                v58 = v114;
                (*(v101 + 2))(v101, v114, v56);
LABEL_98:

                goto LABEL_39;
              }

              if ([v99 skipClassification])
              {
                v60 = qword_10003FFB0;
                if (os_log_type_enabled(qword_10003FFB0, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "Confusion Pair Builder: Skipping classification", buf, 2u);
                }

                v61 = [[ConfusionPairAligner alloc] initWithUttId:v109 recognizedText:v52 correctedText:v53 errorType:0 editMethod:0];
                v56 = v61;
                if (v61)
                {
                  v62 = [(ConfusionPairAligner *)v61 confusionPairs];
                  v63 = [v62 count];

                  if (v63)
                  {
                    v122 = 0u;
                    v123 = 0u;
                    v120 = 0u;
                    v121 = 0u;
                    v112 = v56;
                    v64 = [v56 confusionPairs];
                    v65 = [v64 countByEnumeratingWithState:&v120 objects:v133 count:16];
                    if (v65)
                    {
                      v66 = v65;
                      v67 = *v121;
                      do
                      {
                        for (k = 0; k != v66; k = k + 1)
                        {
                          if (*v121 != v67)
                          {
                            objc_enumerationMutation(v64);
                          }

                          v69 = *(*(&v120 + 1) + 8 * k);
                          if (([v110 containsObject:v69] & 1) == 0)
                          {
                            [v114 addObject:v69];
                          }
                        }

                        v66 = [v64 countByEnumeratingWithState:&v120 objects:v133 count:16];
                      }

                      while (v66);
                    }

                    v21 = v104;
                    v20 = v105;
                    v56 = v112;
                  }
                }

                v57 = v101;
                v58 = v114;
                (*(v101 + 2))(v101, v114, 0);
                goto LABEL_98;
              }

              v70 = [v107 firstObject];
              v71 = [v70 count];
              v72 = [v99 uttLengthThreshold];

              if (v71 > v72)
              {
                v73 = qword_10003FFB0;
                if (os_log_type_enabled(qword_10003FFB0, OS_LOG_TYPE_INFO))
                {
                  v74 = v73;
                  v75 = [v107 firstObject];
                  v76 = [v75 count];
                  *buf = 134217984;
                  v136 = v76;
                  _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "Confusion Pair Builder: Filtered by utterance length: %lu", buf, 0xCu);
                }

                v55 = 358;
                goto LABEL_36;
              }

              v77 = objc_alloc_init(_EAREditDistance);
              v56 = v77;
              v57 = v101;
              if (v77)
              {
                v113 = v77;
                v78 = [v77 editDistanceWithRefText:v53 hypText:v52 caseInsensitive:1 removeWordSense:1];
                v79 = [(EditClassifier *)v78 objectForKeyedSubscript:@"EditDistance"];
                v80 = v79;
                if (v79)
                {
                  v81 = [v79 intValue];
                  v82 = v81;
                  if (v81 < 1)
                  {
                    if (!v81)
                    {
                      v95 = qword_10003FFB0;
                      if (os_log_type_enabled(qword_10003FFB0, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_INFO, "Confusion Pair Builder: Skipping confusion pair building as corrected text is the same as recognized text", buf, 2u);
                      }

                      v84 = 356;
                      goto LABEL_95;
                    }
                  }

                  else if ([v99 distanceThreshold] < v81)
                  {
                    v83 = qword_10003FFB0;
                    if (os_log_type_enabled(qword_10003FFB0, OS_LOG_TYPE_INFO))
                    {
                      *buf = 134217984;
                      v136 = v82;
                      _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_INFO, "Confusion Pair Builder: Filtered by edit distance threshold: %lu", buf, 0xCu);
                    }

                    v84 = 357;
LABEL_95:
                    v96 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:v84 userInfo:0];
                    (*(v101 + 2))(v101, v114, v96);

                    v57 = v101;
                    goto LABEL_96;
                  }
                }

                v21 = v104;
                v20 = v105;
                v56 = v113;
              }

              v78 = [[EditClassifier alloc] initWithLanguage:v20 task:v21 samplingRate:a7];
              v85 = qword_10003FFB0;
              if (os_log_type_enabled(qword_10003FFB0, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_INFO, "Confusion Pair Builder: Start edit classification", buf, 2u);
              }

              if (!v78)
              {
                v88 = qword_10003FFB0;
                if (os_log_type_enabled(qword_10003FFB0, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "Confusion Pair Builder: Failed to initialize classifier", buf, 2u);
                }

                v80 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:352 userInfo:0];
                (*(v101 + 2))(v101, 0, v80);
                goto LABEL_97;
              }

              v86 = [(EditClassifier *)v78 classifyWithUUID:v109 parameters:v99 nbestTokens:v107 recognizedText:v52 correctedText:v53];
              if (v86)
              {
                v80 = v86;
                v87 = qword_10003FFB0;
                if (os_log_type_enabled(qword_10003FFB0, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_INFO, "Confusion Pair Builder: Failed to classify user edit", buf, 2u);
                }

                v57 = v101;
                (*(v101 + 2))(v101, v114, v80);
                goto LABEL_97;
              }

              v113 = v56;
              v89 = [(EditClassifier *)v78 confusionPairs];
              v116 = 0u;
              v117 = 0u;
              v118 = 0u;
              v119 = 0u;
              v90 = [v89 countByEnumeratingWithState:&v116 objects:v132 count:16];
              if (v90)
              {
                v91 = v90;
                v92 = *v117;
                do
                {
                  for (m = 0; m != v91; m = m + 1)
                  {
                    if (*v117 != v92)
                    {
                      objc_enumerationMutation(v89);
                    }

                    v94 = *(*(&v116 + 1) + 8 * m);
                    if (([v110 containsObject:v94] & 1) == 0)
                    {
                      [v94 setEditMethod:{2 * (objc_msgSend(v94, "errorType") == 1)}];
                      [v114 addObject:v94];
                    }
                  }

                  v91 = [v89 countByEnumeratingWithState:&v116 objects:v132 count:16];
                }

                while (v91);
              }

              v57 = v101;
              (*(v101 + 2))(v101, v114, 0);

              v80 = 0;
              v18 = v99;
LABEL_96:
              v56 = v113;
LABEL_97:

              v21 = v104;
              v20 = v105;
              v58 = v114;
              goto LABEL_98;
            }
          }

          else
          {
          }
        }
      }
    }
  }

  v58 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:351 userInfo:0];
  v57 = v101;
  (*(v101 + 2))(v101, 0, v58);
  v53 = v102;
  v52 = v106;
LABEL_39:
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_10003FFB0 = os_log_create("com.apple.speech.speechmodeltraining", "useredit");

    _objc_release_x1();
  }
}

@end