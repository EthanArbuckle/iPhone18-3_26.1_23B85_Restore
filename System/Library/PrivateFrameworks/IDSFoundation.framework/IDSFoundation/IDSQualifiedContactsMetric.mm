@interface IDSQualifiedContactsMetric
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMetric:(id)metric;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSQualifiedContactsMetric *)self isEqualToMetric:equalCopy];

  return v5;
}

- (BOOL)isEqualToMetric:(id)metric
{
  metricCopy = metric;
  if (metricCopy == self)
  {
    v19 = 1;
  }

  else
  {
    handlesCount = [(IDSQualifiedContactsMetric *)self handlesCount];
    handlesCount2 = [(IDSQualifiedContactsMetric *)metricCopy handlesCount];
    if ([handlesCount isEqualToNumber:handlesCount2])
    {
      qualifiedHandlesCount = [(IDSQualifiedContactsMetric *)self qualifiedHandlesCount];
      qualifiedHandlesCount2 = [(IDSQualifiedContactsMetric *)metricCopy qualifiedHandlesCount];
      if ([qualifiedHandlesCount isEqualToNumber:qualifiedHandlesCount2])
      {
        qualifiedHandlesIML = [(IDSQualifiedContactsMetric *)self qualifiedHandlesIML];
        qualifiedHandlesIML2 = [(IDSQualifiedContactsMetric *)metricCopy qualifiedHandlesIML];
        if ([qualifiedHandlesIML isEqualToNumber:qualifiedHandlesIML2])
        {
          primaryHandlesCount = [(IDSQualifiedContactsMetric *)self primaryHandlesCount];
          primaryHandlesCount2 = [(IDSQualifiedContactsMetric *)metricCopy primaryHandlesCount];
          if ([primaryHandlesCount isEqualToNumber:primaryHandlesCount2])
          {
            v31 = primaryHandlesCount;
            qualifiedPrimaryHandles = [(IDSQualifiedContactsMetric *)self qualifiedPrimaryHandles];
            [(IDSQualifiedContactsMetric *)metricCopy qualifiedPrimaryHandles];
            v30 = v32 = qualifiedPrimaryHandles;
            if ([qualifiedPrimaryHandles isEqualToNumber:?])
            {
              qualifiedPrimaryHandlesIML = [(IDSQualifiedContactsMetric *)self qualifiedPrimaryHandlesIML];
              qualifiedPrimaryHandlesIML2 = [(IDSQualifiedContactsMetric *)metricCopy qualifiedPrimaryHandlesIML];
              v29 = qualifiedPrimaryHandlesIML;
              if ([qualifiedPrimaryHandlesIML isEqualToNumber:?])
              {
                familyHandlesCount = [(IDSQualifiedContactsMetric *)self familyHandlesCount];
                familyHandlesCount2 = [(IDSQualifiedContactsMetric *)metricCopy familyHandlesCount];
                v27 = familyHandlesCount;
                if ([familyHandlesCount isEqualToNumber:?])
                {
                  emergencyHandlesCount = [(IDSQualifiedContactsMetric *)self emergencyHandlesCount];
                  emergencyHandlesCount2 = [(IDSQualifiedContactsMetric *)metricCopy emergencyHandlesCount];
                  v25 = emergencyHandlesCount;
                  if ([emergencyHandlesCount isEqualToNumber:?])
                  {
                    qualifiedEmergencyHandles = [(IDSQualifiedContactsMetric *)self qualifiedEmergencyHandles];
                    qualifiedEmergencyHandles2 = [(IDSQualifiedContactsMetric *)metricCopy qualifiedEmergencyHandles];
                    v23 = qualifiedEmergencyHandles;
                    if ([qualifiedEmergencyHandles isEqualToNumber:?])
                    {
                      qualifiedEmergencyHandlesIML = [(IDSQualifiedContactsMetric *)self qualifiedEmergencyHandlesIML];
                      qualifiedEmergencyHandlesIML2 = [(IDSQualifiedContactsMetric *)metricCopy qualifiedEmergencyHandlesIML];
                      v19 = [qualifiedEmergencyHandlesIML isEqualToNumber:qualifiedEmergencyHandlesIML2];
                    }

                    else
                    {
                      v19 = 0;
                    }

                    primaryHandlesCount = v31;
                  }

                  else
                  {
                    v19 = 0;
                    primaryHandlesCount = v31;
                  }
                }

                else
                {
                  v19 = 0;
                  primaryHandlesCount = v31;
                }
              }

              else
              {
                v19 = 0;
                primaryHandlesCount = v31;
              }
            }

            else
            {
              v19 = 0;
              primaryHandlesCount = v31;
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
  handlesCount = [(IDSQualifiedContactsMetric *)self handlesCount];
  qualifiedHandlesCount = [(IDSQualifiedContactsMetric *)self qualifiedHandlesCount];
  qualifiedHandlesIML = [(IDSQualifiedContactsMetric *)self qualifiedHandlesIML];
  primaryHandlesCount = [(IDSQualifiedContactsMetric *)self primaryHandlesCount];
  qualifiedPrimaryHandles = [(IDSQualifiedContactsMetric *)self qualifiedPrimaryHandles];
  qualifiedPrimaryHandlesIML = [(IDSQualifiedContactsMetric *)self qualifiedPrimaryHandlesIML];
  familyHandlesCount = [(IDSQualifiedContactsMetric *)self familyHandlesCount];
  emergencyHandlesCount = [(IDSQualifiedContactsMetric *)self emergencyHandlesCount];
  qualifiedEmergencyHandles = [(IDSQualifiedContactsMetric *)self qualifiedEmergencyHandles];
  qualifiedEmergencyHandlesIML = [(IDSQualifiedContactsMetric *)self qualifiedEmergencyHandlesIML];
  v12 = [v15 stringWithFormat:@"<%@: %p handlesCount = %@; qualifiedHandlesCount = %@; qualifiedHandlesIML = %@; primaryHandlesCount = %@; qualifiedPrimaryHandles = %@; qualifiedPrimaryHandlesIML = %@; familyHandlesCount = %@; emergencyHandlesCount = %@; qualifiedEmergencyHandles = %@; qualifiedEmergencyHandlesIML = %@>", v14, self, handlesCount, qualifiedHandlesCount, qualifiedHandlesIML, primaryHandlesCount, qualifiedPrimaryHandles, qualifiedPrimaryHandlesIML, familyHandlesCount, emergencyHandlesCount, qualifiedEmergencyHandles, qualifiedEmergencyHandlesIML];;

  return v12;
}

@end