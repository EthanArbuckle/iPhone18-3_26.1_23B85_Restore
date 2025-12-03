@interface DebugHierarchyPropertyActionLegacyV1
- (id)_serializePropertyDescription:(id)description;
- (void)performInContext:(id)context withObject:(id)object;
@end

@implementation DebugHierarchyPropertyActionLegacyV1

- (void)performInContext:(id)context withObject:(id)object
{
  contextCopy = context;
  objectCopy = object;
  if ([(DebugHierarchyPropertyAction *)self isTargetingObject:objectCopy]&& DBHIsInstanceOverridingNSObjectSelector(objectCopy, "debugHierarchyPropertyDescriptions"))
  {
    v27 = objectCopy;
    debugHierarchyPropertyDescriptions = [objectCopy debugHierarchyPropertyDescriptions];
    v29 = +[NSMutableArray array];
    propertyNames = [(DebugHierarchyPropertyAction *)self propertyNames];
    v31 = [propertyNames count];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = debugHierarchyPropertyDescriptions;
    v9 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (!v9)
    {
      goto LABEL_27;
    }

    v30 = *v37;
    while (1)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"propertyName"];
        if (v31)
        {
          propertyNamesAreExclusive = [(DebugHierarchyPropertyAction *)self propertyNamesAreExclusive];
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          propertyNames2 = [(DebugHierarchyPropertyAction *)self propertyNames];
          v15 = [propertyNames2 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v15)
          {
            v16 = *v33;
LABEL_11:
            v17 = 0;
            while (1)
            {
              if (*v33 != v16)
              {
                objc_enumerationMutation(propertyNames2);
              }

              if ([*(*(&v32 + 1) + 8 * v17) isEqualToString:v12])
              {
                break;
              }

              if (v15 == ++v17)
              {
                v15 = [propertyNames2 countByEnumeratingWithState:&v32 objects:v40 count:16];
                if (v15)
                {
                  goto LABEL_11;
                }

                goto LABEL_17;
              }
            }

            propertyNamesAreExclusive2 = [(DebugHierarchyPropertyAction *)self propertyNamesAreExclusive];

            if (propertyNamesAreExclusive2)
            {
              goto LABEL_25;
            }
          }

          else
          {
LABEL_17:

            if (!propertyNamesAreExclusive)
            {
              goto LABEL_25;
            }
          }
        }

        v19 = [v11 objectForKeyedSubscript:@"propertyOptions"];
        unsignedIntegerValue = [v19 unsignedIntegerValue];

        if (DebugHierarchyBitMaskComparison(unsignedIntegerValue, [(DebugHierarchyPropertyAction *)self options], [(DebugHierarchyPropertyAction *)self optionsComparisonStyle]))
        {
          if (DBHIsInstanceOverridingNSObjectSelector(v27, "debugHierarchyValueForPropertyWithName:"))
          {
            v21 = [v27 debugHierarchyValueForPropertyWithName:v12];
            if (v21)
            {
              v22 = [v11 mutableCopy];
              [v22 setObject:v21 forKeyedSubscript:@"propertyValue"];
              v23 = [v22 copy];

              v11 = v23;
            }
          }
        }

        v24 = [(DebugHierarchyPropertyActionLegacyV1 *)self _serializePropertyDescription:v11];
        [v29 addObject:v24];

LABEL_25:
      }

      v9 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (!v9)
      {
LABEL_27:

        v25 = [v29 copy];
        [contextCopy addProperties:v25 toObject:v27];

        objectCopy = v27;
        break;
      }
    }
  }
}

- (id)_serializePropertyDescription:(id)description
{
  descriptionCopy = description;
  v4 = [descriptionCopy copy];
  v17 = 0;
  v5 = DBGSerializePropertyDescriptionAsJSON(v4, &v17);
  v6 = v17;

  if (v6)
  {
    v7 = [descriptionCopy objectForKeyedSubscript:@"propertyName"];
    v8 = v7;
    v9 = @"<nil>";
    if (v7)
    {
      v9 = v7;
    }

    v19[0] = &off_2DB88;
    v18[0] = @"fetchStatus";
    v18[1] = @"errorDescription";
    v10 = v9;
    v11 = [v6 description];
    v18[2] = @"propertyName";
    v19[1] = v11;
    v19[2] = v10;
    v12 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
  }

  else
  {
    v8 = [v5 mutableCopy];
    v13 = [v5 objectForKeyedSubscript:@"propertyValue"];

    if (v13)
    {
      v14 = 4;
    }

    else
    {
      v14 = 1;
    }

    v15 = [NSNumber numberWithLong:v14];
    [v8 setObject:v15 forKeyedSubscript:@"fetchStatus"];

    v12 = [v8 copy];
  }

  return v12;
}

@end