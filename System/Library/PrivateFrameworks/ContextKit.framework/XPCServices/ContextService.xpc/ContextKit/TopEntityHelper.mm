@interface TopEntityHelper
+ (id)findNamedEntities:(id)a3;
+ (id)mergeAndSort:(id)a3 usingMergeType:(unint64_t)a4;
+ (void)initialize;
@end

@implementation TopEntityHelper

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [&off_1004A9E50 componentsJoinedByString:@")|("];
    v5 = [NSString stringWithFormat:@"^((%@))\\.?\\s", v2];

    v3 = [NSRegularExpression regularExpressionWithPattern:v5 options:1 error:0];
    v4 = qword_1005571F0;
    qword_1005571F0 = v3;
  }
}

+ (id)findNamedEntities:(id)a3
{
  v3 = a3;
  v4 = [NSLinguisticTagger alloc];
  v17 = NSLinguisticTagSchemeNameType;
  v5 = [NSArray arrayWithObjects:&v17 count:1];
  v6 = [v4 initWithTagSchemes:v5 options:30];

  [v6 setString:v3];
  v7 = objc_opt_new();
  v8 = [v3 length];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1002A4B44;
  v14[3] = &unk_100483DB0;
  v15 = v3;
  v9 = v7;
  v16 = v9;
  v10 = v3;
  [v6 enumerateTagsInRange:0 scheme:v8 options:NSLinguisticTagSchemeNameType usingBlock:{30, v14}];
  v11 = v16;
  v12 = v9;

  return v9;
}

+ (id)mergeAndSort:(id)a3 usingMergeType:(unint64_t)a4
{
  v4 = a3;
  v5 = objc_opt_new();
  v44 = objc_opt_new();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v61;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v61 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v60 + 1) + 8 * i);
        if ([v5 count] >= 0x32)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v68 = 50;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Trimmed entity list to count: %lu", buf, 0xCu);
          }

          goto LABEL_19;
        }

        v11 = [v10 name];
        v12 = [v11 length];

        if (v12 <= 0x64)
        {
          v13 = [v10 name];
          v14 = v13;
          if (a4 == 1)
          {
            v15 = [qword_1005571F0 stringByReplacingMatchesInString:v13 options:0 range:0 withTemplate:{objc_msgSend(v13, "length"), &stru_100484358}];

            v14 = v15;
          }

          v16 = [v5 objectForKeyedSubscript:v14];

          if (v16)
          {
            v17 = [v5 objectForKeyedSubscript:v14];
            [(CTKMergedNamedEntity *)v17 mergeWith:v10];
          }

          else
          {
            v17 = [[CTKMergedNamedEntity alloc] initWithEntity:v10];
            [v5 setObject:v17 forKeyedSubscript:v14];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v42 = v5;
  v18 = a4;
  v41 = [v42 countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (!v41)
  {
    goto LABEL_47;
  }

  v40 = *v57;
  do
  {
    v19 = 0;
    do
    {
      if (*v57 != v40)
      {
        objc_enumerationMutation(v42);
      }

      v43 = v19;
      v20 = *(*(&v56 + 1) + 8 * v19);
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v21 = v42;
      v22 = [v21 countByEnumeratingWithState:&v52 objects:v65 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v53;
        v46 = *v53;
        do
        {
          v25 = 0;
          v47 = v23;
          do
          {
            if (*v53 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v52 + 1) + 8 * v25);
            if (v20 != v26)
            {
              if (v18 == 1)
              {
                if (![v20 localizedCaseInsensitiveContainsString:*(*(&v52 + 1) + 8 * v25)])
                {
                  goto LABEL_43;
                }
              }

              else if (v18 != 2 || ([*(*(&v52 + 1) + 8 * v25) localizedCaseInsensitiveContainsString:v20] & 1) == 0)
              {
                goto LABEL_43;
              }

              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              v27 = [v21 objectForKeyedSubscript:v26];
              v28 = [v27 sourceNamedEntities];

              v29 = [v28 countByEnumeratingWithState:&v48 objects:v64 count:16];
              if (v29)
              {
                v30 = v29;
                v31 = *v49;
                do
                {
                  for (j = 0; j != v30; j = j + 1)
                  {
                    if (*v49 != v31)
                    {
                      objc_enumerationMutation(v28);
                    }

                    v33 = *(*(&v48 + 1) + 8 * j);
                    v34 = [v21 objectForKeyedSubscript:v20];
                    [v34 mergeWith:v33];
                  }

                  v30 = [v28 countByEnumeratingWithState:&v48 objects:v64 count:16];
                }

                while (v30);
              }

              [v44 addObject:v26];
              v18 = a4;
              v24 = v46;
              v23 = v47;
            }

LABEL_43:
            v25 = v25 + 1;
          }

          while (v25 != v23);
          v23 = [v21 countByEnumeratingWithState:&v52 objects:v65 count:16];
        }

        while (v23);
      }

      v19 = v43 + 1;
    }

    while ((v43 + 1) != v41);
    v41 = [v21 countByEnumeratingWithState:&v56 objects:v66 count:16];
  }

  while (v41);
LABEL_47:

  v35 = [v44 allObjects];
  [v42 removeObjectsForKeys:v35];

  v36 = [v42 allValues];
  v37 = [v36 sortedArrayUsingSelector:"descendingScoreCompare:"];

  return v37;
}

@end