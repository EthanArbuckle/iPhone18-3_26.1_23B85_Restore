@interface LNPrimitiveValueType(CATSupport)
- (__CFString)cat_dialogType;
- (__CFString)cat_keyPath;
- (id)cat_value:()CATSupport;
@end

@implementation LNPrimitiveValueType(CATSupport)

- (__CFString)cat_keyPath
{
  v1 = [a1 typeIdentifier];
  v2 = @"longLocation";
  if (v1 != 10)
  {
    v2 = 0;
  }

  if (v1 == 8)
  {
    return @"dateTimeDescriptive";
  }

  else
  {
    return v2;
  }
}

- (id)cat_value:()CATSupport
{
  v83[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 typeIdentifier];
  v6 = 0;
  if (v5 > 7)
  {
    if (v5 <= 9)
    {
      if (v5 == 8)
      {
        v82[0] = @"secs";
        v15 = MEMORY[0x1E696AD98];
        v16 = [v4 value];
        if (v16)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        v22 = v17;

        [v22 timeIntervalSince1970];
        v24 = v23;

        v12 = [v15 numberWithDouble:v24];
        v82[1] = @"timeZone";
        v83[0] = v12;
        v25 = [MEMORY[0x1E695DFE8] localTimeZone];
        v26 = [v25 name];
        v83[1] = v26;
        v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:2];
      }

      else
      {
        v80 = @"secs";
        v11 = MEMORY[0x1E696AD98];
        v12 = [MEMORY[0x1E695DEE8] currentCalendar];
        v13 = [v4 value];
        if (v13)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }

        v27 = v14;

        v28 = [v12 dateFromComponents:v27];

        [v28 timeIntervalSince1970];
        v29 = [v11 numberWithDouble:?];
        v81 = v29;
        v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      }
    }

    else
    {
      switch(v5)
      {
        case 10:
          v78 = @"values";
          v75 = @"address";
          v73[0] = @"administrativeArea";
          v18 = [v4 value];
          if (v18)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = v18;
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = 0;
          }

          v30 = v19;

          v31 = [v30 administrativeArea];

          v72 = v31;
          v74[0] = v31;
          v73[1] = @"country";
          v32 = [v4 value];
          if (v32)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = v32;
            }

            else
            {
              v33 = 0;
            }
          }

          else
          {
            v33 = 0;
          }

          v34 = v33;

          v35 = [v34 country];

          v71 = v35;
          v74[1] = v35;
          v73[2] = @"countryCode";
          v36 = [v4 value];
          if (v36)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v37 = v36;
            }

            else
            {
              v37 = 0;
            }
          }

          else
          {
            v37 = 0;
          }

          v38 = v37;

          v39 = [v38 ISOcountryCode];

          v70 = v39;
          v74[2] = v39;
          v73[3] = @"locality";
          v40 = [v4 value];
          if (v40)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = v40;
            }

            else
            {
              v41 = 0;
            }
          }

          else
          {
            v41 = 0;
          }

          v42 = v41;

          v43 = [v42 locality];

          v69 = v43;
          v74[3] = v43;
          v73[4] = @"name";
          v44 = [v4 value];
          if (v44)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v45 = v44;
            }

            else
            {
              v45 = 0;
            }
          }

          else
          {
            v45 = 0;
          }

          v46 = v45;

          v47 = [v46 name];

          v74[4] = v47;
          v73[5] = @"postCode";
          v48 = [v4 value];
          if (v48)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v49 = v48;
            }

            else
            {
              v49 = 0;
            }
          }

          else
          {
            v49 = 0;
          }

          v50 = v49;

          v51 = [v50 postalCode];

          v74[5] = v51;
          v73[6] = @"subAdministrativeArea";
          v52 = [v4 value];
          if (v52)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v53 = v52;
            }

            else
            {
              v53 = 0;
            }
          }

          else
          {
            v53 = 0;
          }

          v54 = v53;

          v55 = [v54 subAdministrativeArea];

          v74[6] = v55;
          v73[7] = @"subThoroughfare";
          v56 = [v4 value];
          if (v56)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v57 = v56;
            }

            else
            {
              v57 = 0;
            }
          }

          else
          {
            v57 = 0;
          }

          v58 = v57;

          v59 = [v58 subThoroughfare];

          v74[7] = v59;
          v73[8] = @"thoroughfare";
          v60 = [v4 value];
          if (v60)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v61 = v60;
            }

            else
            {
              v61 = 0;
            }
          }

          else
          {
            v61 = 0;
          }

          v62 = v61;

          v63 = [v62 thoroughfare];

          v74[8] = v63;
          v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:9];
          v76 = v64;
          v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
          v77 = v65;
          v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
          v79 = v66;
          v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];

          goto LABEL_4;
        case 11:
          v20 = [v4 value];
          if (v20)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = v20;
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v21 = 0;
          }

          v67 = v21;

          v68 = [v67 absoluteString];
          break;
        case 12:
          v9 = [v4 value];
          if (v9)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = v9;
            }

            else
            {
              v10 = 0;
            }
          }

          else
          {
            v10 = 0;
          }

          v67 = v10;

          v68 = [v67 string];
          break;
        default:
          goto LABEL_4;
      }

      v6 = v68;
    }
  }

  else if (v5 < 8)
  {
    v6 = [v4 value];
  }

LABEL_4:

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (__CFString)cat_dialogType
{
  v1 = [a1 typeIdentifier];
  if ((v1 - 1) > 9)
  {
    return @"dialog.String";
  }

  else
  {
    return off_1E74B1518[v1 - 1];
  }
}

@end