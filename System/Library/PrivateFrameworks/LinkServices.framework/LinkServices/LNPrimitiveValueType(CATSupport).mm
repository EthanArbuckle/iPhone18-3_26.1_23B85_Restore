@interface LNPrimitiveValueType(CATSupport)
- (__CFString)cat_dialogType;
- (__CFString)cat_keyPath;
- (id)cat_value:()CATSupport;
@end

@implementation LNPrimitiveValueType(CATSupport)

- (__CFString)cat_keyPath
{
  typeIdentifier = [self typeIdentifier];
  v2 = @"longLocation";
  if (typeIdentifier != 10)
  {
    v2 = 0;
  }

  if (typeIdentifier == 8)
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
  typeIdentifier = [self typeIdentifier];
  value14 = 0;
  if (typeIdentifier > 7)
  {
    if (typeIdentifier <= 9)
    {
      if (typeIdentifier == 8)
      {
        v82[0] = @"secs";
        v15 = MEMORY[0x1E696AD98];
        value = [v4 value];
        if (value)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = value;
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

        currentCalendar = [v15 numberWithDouble:v24];
        v82[1] = @"timeZone";
        v83[0] = currentCalendar;
        localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
        name = [localTimeZone name];
        v83[1] = name;
        value14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:2];
      }

      else
      {
        v80 = @"secs";
        v11 = MEMORY[0x1E696AD98];
        currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
        value2 = [v4 value];
        if (value2)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = value2;
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

        v28 = [currentCalendar dateFromComponents:v27];

        [v28 timeIntervalSince1970];
        v29 = [v11 numberWithDouble:?];
        v81 = v29;
        value14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      }
    }

    else
    {
      switch(typeIdentifier)
      {
        case 10:
          v78 = @"values";
          v75 = @"address";
          v73[0] = @"administrativeArea";
          value3 = [v4 value];
          if (value3)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = value3;
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

          administrativeArea = [v30 administrativeArea];

          v72 = administrativeArea;
          v74[0] = administrativeArea;
          v73[1] = @"country";
          value4 = [v4 value];
          if (value4)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = value4;
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

          country = [v34 country];

          v71 = country;
          v74[1] = country;
          v73[2] = @"countryCode";
          value5 = [v4 value];
          if (value5)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v37 = value5;
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

          iSOcountryCode = [v38 ISOcountryCode];

          v70 = iSOcountryCode;
          v74[2] = iSOcountryCode;
          v73[3] = @"locality";
          value6 = [v4 value];
          if (value6)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = value6;
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

          locality = [v42 locality];

          v69 = locality;
          v74[3] = locality;
          v73[4] = @"name";
          value7 = [v4 value];
          if (value7)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v45 = value7;
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

          name2 = [v46 name];

          v74[4] = name2;
          v73[5] = @"postCode";
          value8 = [v4 value];
          if (value8)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v49 = value8;
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

          postalCode = [v50 postalCode];

          v74[5] = postalCode;
          v73[6] = @"subAdministrativeArea";
          value9 = [v4 value];
          if (value9)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v53 = value9;
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

          subAdministrativeArea = [v54 subAdministrativeArea];

          v74[6] = subAdministrativeArea;
          v73[7] = @"subThoroughfare";
          value10 = [v4 value];
          if (value10)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v57 = value10;
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

          subThoroughfare = [v58 subThoroughfare];

          v74[7] = subThoroughfare;
          v73[8] = @"thoroughfare";
          value11 = [v4 value];
          if (value11)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v61 = value11;
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

          thoroughfare = [v62 thoroughfare];

          v74[8] = thoroughfare;
          v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:9];
          v76 = v64;
          v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
          v77 = v65;
          v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
          v79 = v66;
          value14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];

          goto LABEL_4;
        case 11:
          value12 = [v4 value];
          if (value12)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = value12;
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

          absoluteString = [v67 absoluteString];
          break;
        case 12:
          value13 = [v4 value];
          if (value13)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = value13;
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

          absoluteString = [v67 string];
          break;
        default:
          goto LABEL_4;
      }

      value14 = absoluteString;
    }
  }

  else if (typeIdentifier < 8)
  {
    value14 = [v4 value];
  }

LABEL_4:

  v7 = *MEMORY[0x1E69E9840];

  return value14;
}

- (__CFString)cat_dialogType
{
  typeIdentifier = [self typeIdentifier];
  if ((typeIdentifier - 1) > 9)
  {
    return @"dialog.String";
  }

  else
  {
    return off_1E74B1518[typeIdentifier - 1];
  }
}

@end