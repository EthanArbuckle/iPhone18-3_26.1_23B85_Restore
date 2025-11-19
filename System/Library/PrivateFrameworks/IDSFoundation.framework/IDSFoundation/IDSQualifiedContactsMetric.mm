@interface IDSQualifiedContactsMetric
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMetric:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
@end

@implementation IDSQualifiedContactsMetric

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  qualifiedHandlesCount = self->_qualifiedHandlesCount;
  if (qualifiedHandlesCount)
  {
    CFDictionarySetValue(v3, @"qualifiedHandlesCount", qualifiedHandlesCount);
  }

  qualifiedHandlesIML = self->_qualifiedHandlesIML;
  if (qualifiedHandlesIML)
  {
    CFDictionarySetValue(v4, @"qualifiedHandlesIML", qualifiedHandlesIML);
  }

  handlesCount = self->_handlesCount;
  if (handlesCount)
  {
    CFDictionarySetValue(v4, @"handlesCount", handlesCount);
  }

  qualifiedEmergencyHandles = self->_qualifiedEmergencyHandles;
  if (qualifiedEmergencyHandles)
  {
    CFDictionarySetValue(v4, @"qualifiedEmergencyHandles", qualifiedEmergencyHandles);
  }

  qualifiedEmergencyHandlesIML = self->_qualifiedEmergencyHandlesIML;
  if (qualifiedEmergencyHandlesIML)
  {
    CFDictionarySetValue(v4, @"qualifiedEmergencyHandlesIML", qualifiedEmergencyHandlesIML);
  }

  emergencyHandlesCount = self->_emergencyHandlesCount;
  if (emergencyHandlesCount)
  {
    CFDictionarySetValue(v4, @"emergencyHandlesCount", emergencyHandlesCount);
  }

  qualifiedPrimaryHandles = self->_qualifiedPrimaryHandles;
  if (qualifiedPrimaryHandles)
  {
    CFDictionarySetValue(v4, @"qualifiedPrimaryHandles", qualifiedPrimaryHandles);
  }

  qualifiedPrimaryHandlesIML = self->_qualifiedPrimaryHandlesIML;
  if (qualifiedPrimaryHandlesIML)
  {
    CFDictionarySetValue(v4, @"qualifiedPrimaryHandlesIML", qualifiedPrimaryHandlesIML);
  }

  primaryHandlesCount = self->_primaryHandlesCount;
  if (primaryHandlesCount)
  {
    CFDictionarySetValue(v4, @"primaryHandlesCount", primaryHandlesCount);
  }

  familyHandlesCount = self->_familyHandlesCount;
  if (familyHandlesCount)
  {
    CFDictionarySetValue(v4, @"familyHandlesCount", familyHandlesCount);
  }

  emergencyHandleMsgCount = self->_emergencyHandleMsgCount;
  if (emergencyHandleMsgCount)
  {
    CFDictionarySetValue(v4, @"emergencyHandleMsgCount", emergencyHandleMsgCount);
  }

  primaryHandleMsgCount = self->_primaryHandleMsgCount;
  if (primaryHandleMsgCount)
  {
    CFDictionarySetValue(v4, @"primaryHandleMsgCount", primaryHandleMsgCount);
  }

  qualifiedHandleMsgCount = self->_qualifiedHandleMsgCount;
  if (qualifiedHandleMsgCount)
  {
    CFDictionarySetValue(v4, @"qualifiedHandleMsgCount", qualifiedHandleMsgCount);
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSQualifiedContactsMetric *)self isEqualToMetric:v4];

  return v5;
}

- (BOOL)isEqualToMetric:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v19 = 1;
  }

  else
  {
    v5 = [(IDSQualifiedContactsMetric *)self handlesCount];
    v6 = [(IDSQualifiedContactsMetric *)v4 handlesCount];
    if ([v5 isEqualToNumber:v6])
    {
      v7 = [(IDSQualifiedContactsMetric *)self qualifiedHandlesCount];
      v8 = [(IDSQualifiedContactsMetric *)v4 qualifiedHandlesCount];
      if ([v7 isEqualToNumber:v8])
      {
        v9 = [(IDSQualifiedContactsMetric *)self qualifiedHandlesIML];
        v10 = [(IDSQualifiedContactsMetric *)v4 qualifiedHandlesIML];
        if ([v9 isEqualToNumber:v10])
        {
          v11 = [(IDSQualifiedContactsMetric *)self primaryHandlesCount];
          v12 = [(IDSQualifiedContactsMetric *)v4 primaryHandlesCount];
          if ([v11 isEqualToNumber:v12])
          {
            v31 = v11;
            v13 = [(IDSQualifiedContactsMetric *)self qualifiedPrimaryHandles];
            [(IDSQualifiedContactsMetric *)v4 qualifiedPrimaryHandles];
            v30 = v32 = v13;
            if ([v13 isEqualToNumber:?])
            {
              v14 = [(IDSQualifiedContactsMetric *)self qualifiedPrimaryHandlesIML];
              v28 = [(IDSQualifiedContactsMetric *)v4 qualifiedPrimaryHandlesIML];
              v29 = v14;
              if ([v14 isEqualToNumber:?])
              {
                v15 = [(IDSQualifiedContactsMetric *)self familyHandlesCount];
                v26 = [(IDSQualifiedContactsMetric *)v4 familyHandlesCount];
                v27 = v15;
                if ([v15 isEqualToNumber:?])
                {
                  v16 = [(IDSQualifiedContactsMetric *)self emergencyHandlesCount];
                  v24 = [(IDSQualifiedContactsMetric *)v4 emergencyHandlesCount];
                  v25 = v16;
                  if ([v16 isEqualToNumber:?])
                  {
                    v17 = [(IDSQualifiedContactsMetric *)self qualifiedEmergencyHandles];
                    v22 = [(IDSQualifiedContactsMetric *)v4 qualifiedEmergencyHandles];
                    v23 = v17;
                    if ([v17 isEqualToNumber:?])
                    {
                      v18 = [(IDSQualifiedContactsMetric *)self qualifiedEmergencyHandlesIML];
                      v21 = [(IDSQualifiedContactsMetric *)v4 qualifiedEmergencyHandlesIML];
                      v19 = [v18 isEqualToNumber:v21];
                    }

                    else
                    {
                      v19 = 0;
                    }

                    v11 = v31;
                  }

                  else
                  {
                    v19 = 0;
                    v11 = v31;
                  }
                }

                else
                {
                  v19 = 0;
                  v11 = v31;
                }
              }

              else
              {
                v19 = 0;
                v11 = v31;
              }
            }

            else
            {
              v19 = 0;
              v11 = v31;
            }
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
  }

  return v19;
}

- (NSString)description
{
  v15 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  v16 = [(IDSQualifiedContactsMetric *)self handlesCount];
  v3 = [(IDSQualifiedContactsMetric *)self qualifiedHandlesCount];
  v4 = [(IDSQualifiedContactsMetric *)self qualifiedHandlesIML];
  v5 = [(IDSQualifiedContactsMetric *)self primaryHandlesCount];
  v6 = [(IDSQualifiedContactsMetric *)self qualifiedPrimaryHandles];
  v7 = [(IDSQualifiedContactsMetric *)self qualifiedPrimaryHandlesIML];
  v8 = [(IDSQualifiedContactsMetric *)self familyHandlesCount];
  v9 = [(IDSQualifiedContactsMetric *)self emergencyHandlesCount];
  v10 = [(IDSQualifiedContactsMetric *)self qualifiedEmergencyHandles];
  v11 = [(IDSQualifiedContactsMetric *)self qualifiedEmergencyHandlesIML];
  v12 = [v15 stringWithFormat:@"<%@: %p handlesCount = %@; qualifiedHandlesCount = %@; qualifiedHandlesIML = %@; primaryHandlesCount = %@; qualifiedPrimaryHandles = %@; qualifiedPrimaryHandlesIML = %@; familyHandlesCount = %@; emergencyHandlesCount = %@; qualifiedEmergencyHandles = %@; qualifiedEmergencyHandlesIML = %@>", v14, self, v16, v3, v4, v5, v6, v7, v8, v9, v10, v11];;

  return v12;
}

@end