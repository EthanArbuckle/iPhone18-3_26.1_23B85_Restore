@interface DebugHierarchyObjectInterface
+ (id)propertyDescriptionsForClass:(Class)a3 inContext:(id)a4;
+ (id)valueAndOptionsForProperty:(id)a3 onObject:(id)a4 inContext:(id)a5;
+ (id)valueForProperty:(id)a3 withOutOptions:(id *)a4 onObject:(id)a5 inContext:(id)a6 error:(id *)a7;
@end

@implementation DebugHierarchyObjectInterface

+ (id)valueAndOptionsForProperty:(id)a3 onObject:(id)a4 inContext:(id)a5
{
  v8 = a3;
  v31 = 0;
  v32 = 0;
  v9 = [a1 valueForProperty:v8 withOutOptions:&v32 onObject:a4 inContext:a5 error:&v31];
  v10 = v32;
  v11 = v31;
  if (v11)
  {
    v12 = [v8 name];
    v13 = v12;
    v14 = @"<nil>";
    if (v12)
    {
      v14 = v12;
    }

    v15 = v14;

    v34[0] = &off_2DBE8;
    v33[0] = @"fetchStatus";
    v33[1] = @"errorDescription";
    v16 = [v11 description];
    v33[2] = @"propertyName";
    v34[1] = v16;
    v34[2] = v15;
    v17 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:3];
  }

  else
  {
    if ([v10 count])
    {
      v18 = [v10 mutableCopy];
    }

    else
    {
      v18 = [NSMutableDictionary dictionaryWithCapacity:2];
    }

    v16 = v18;
    [v18 setObject:&off_2DBD0 forKeyedSubscript:@"fetchStatus"];
    v19 = [v8 name];
    [v16 setObject:v19 forKeyedSubscript:@"propertyName"];

    if (v9)
    {
      [v16 setObject:v9 forKeyedSubscript:@"propertyValue"];
    }

    v20 = [v16 objectForKeyedSubscript:@"propertyFormat"];

    if (!v20)
    {
      v21 = [v8 format];
      if (v21)
      {
        [v16 setObject:v21 forKeyedSubscript:@"propertyFormat"];
      }
    }

    v22 = [v16 copy];
    v30 = 0;
    v23 = DBGSerializePropertyDescriptionAsJSON(v22, &v30);
    v15 = v30;

    if (v15)
    {
      v24 = [v8 name];
      v25 = v24;
      v26 = @"<nil>";
      if (v24)
      {
        v26 = v24;
      }

      v27 = v26;

      v36[0] = &off_2DBE8;
      v35[0] = @"fetchStatus";
      v35[1] = @"errorDescription";
      v28 = [(__CFString *)v15 description];
      v35[2] = @"propertyName";
      v36[1] = v28;
      v36[2] = v27;
      v17 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:3];
    }

    else
    {
      v17 = v23;
    }
  }

  return v17;
}

+ (id)valueForProperty:(id)a3 withOutOptions:(id *)a4 onObject:(id)a5 inContext:(id)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([DebugHierarchyObjectProtocolHelper classImplements_debugHierarchyValueForPropertyWithName:objc_opt_class()])
  {
    v13 = v11;
    v14 = objc_opt_class();
    v15 = v14;
    if (v14)
    {
      if (object_isClass(v14))
      {
        v15 = NSStringFromClass(v15);
      }

      else
      {
        v15 = 0;
      }
    }

    v16 = [v12 runtimeTypeWithName:v15];

    v17 = v16;
    v69 = v17;
    if (v17)
    {
      v18 = v17;
      do
      {
        v19 = [v18 instanceProperties];
        v20 = [v10 name];
        v21 = [v19 objectForKeyedSubscript:v20];

        if (v21)
        {
          v22 = v18;
        }

        else
        {
          v22 = 0;
        }

        v23 = [v18 parentType];

        if (v22)
        {
          break;
        }

        v18 = v23;
      }

      while (v23);
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    v24 = [v22 name];
    v25 = NSClassFromString(v24);
    v68 = a4;

    if (!v25)
    {
      v30 = 0;
      Mutable = 0;
LABEL_42:
      v70 = v30;
      v45 = v30;
      v28 = 0;
      *v68 = v70;
      goto LABEL_43;
    }

    v26 = [v10 name];
    v73 = 0;
    v74 = 0;
    v27 = [DebugHierarchyObjectProtocolHelper debugHierarchyValueForPropertyWithName:v26 onObject:v13 vendingClass:v25 outOptions:&v74 outError:&v73];
    v70 = v74;
    v28 = v73;

    if (v28)
    {
      Mutable = v27;
LABEL_43:
      if ([DebugHierarchyValueProtocolHelper objectImplementsRequiredDebugHierarchyValueMethods:Mutable])
      {
        v71 = 0;
        v72 = 0;
        v46 = [DebugHierarchyValueProtocolHelper debugHierarchyValueWithOutOptions:&v72 outError:&v71 onObject:Mutable];
        v47 = v72;
        v48 = v71;
        if (v48)
        {
          v49 = v48;

          v46 = 0;
        }

        else
        {
          v50 = v47;
          *v68 = v47;
        }
      }

      else
      {
        v46 = Mutable;
      }

      goto LABEL_78;
    }

    if (v27)
    {
      v31 = [v10 logicalType];
      v32 = [v31 isEqualToString:@"DebugHierarchyLogicalPropertyTypeObjectInfo"];

      if (v32)
      {
        v33 = v27;
        v34 = objc_opt_class();
        v35 = v34;
        if (v34)
        {
          if (object_isClass(v34))
          {
            v35 = NSStringFromClass(v35);
          }

          else
          {
            v35 = 0;
          }
        }

        v42 = &stru_29008;
        if (v35)
        {
          v42 = v35;
        }

        v43 = v42;

        v27 = v33;
        v44 = CFStringCreateWithFormat(0, 0, @"%p", v27);

        values[0] = @"className";
        values[1] = @"memoryAddress";
        keys[0] = v43;
        keys[1] = v44;
        Mutable = [NSDictionary dictionaryWithObjects:keys forKeys:values count:2];
      }

      else
      {
        v36 = [v10 logicalType];
        v37 = [v36 isEqualToString:@"DebugHierarchyLogicalPropertyTypePointer"];

        if (v37)
        {
          Mutable = [NSString stringWithFormat:@"%p", v27];
        }

        else
        {
          v38 = CFGetTypeID(v27);
          if (v38 == CGColorGetTypeID())
          {
            Mutable = CFDictionaryCreateMutable(0, 20, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            space = CGColorGetColorSpace(v27);
            value = CGColorSpaceCopyName(space);
            NumberOfComponents = CGColorGetNumberOfComponents(v27);
            numValues = NumberOfComponents;
            v63 = NumberOfComponents << 32;
            if (NumberOfComponents << 32)
            {
              theString = CFStringCreateMutable(0, 0);
              v40 = numValues - 1;
              if (numValues <= 1)
              {
                v41 = 1;
              }

              else
              {
                v41 = numValues;
              }

              do
              {
                CFStringAppend(theString, @"CGf");
                if (v40)
                {
                  CFStringAppend(theString, @", ");
                }

                --v40;
                --v41;
              }

              while (v41);
            }

            else
            {
              theString = &stru_29008;
            }

            Components = CGColorGetComponents(v27);
            v65 = malloc_type_malloc(v63 >> 29, 0x6004044C4A2DFuLL);
            if (v63)
            {
              if (numValues <= 1)
              {
                v55 = 1;
              }

              else
              {
                v55 = numValues;
              }

              v56 = v65;
              do
              {
                *v56++ = CFNumberCreate(0, kCFNumberCGFloatType, Components++);
                --v55;
              }

              while (v55);
            }

            v57 = CFArrayCreate(0, v65, numValues, &kCFTypeArrayCallBacks);
            if (v63)
            {
              if (numValues <= 1)
              {
                v58 = 1;
              }

              else
              {
                v58 = numValues;
              }

              v59 = v65;
              do
              {
                CFRelease(*v59++);
                --v58;
              }

              while (v58);
            }

            free(v65);
            CGColorSpaceGetModel(space);
            if (v57)
            {
              CFDictionaryAddValue(Mutable, @"componentValues", v57);
            }

            if (theString)
            {
              CFDictionaryAddValue(Mutable, @"componentValuesFormat", theString);
            }

            if (value)
            {
              CFDictionaryAddValue(Mutable, @"colorSpaceName", value);
            }

            if (v57)
            {
              CFRelease(v57);
            }

            if (value)
            {
              CFRelease(value);
            }

            if (theString)
            {
              CFRelease(theString);
            }
          }

          else
          {
            if (v38 != CGImageGetTypeID())
            {
              Mutable = v27;
              goto LABEL_41;
            }

            v51 = [v10 format];
            valuePtr = 1065353216;
            Mutable = CFDataCreateMutable(0, 0);
            v52 = CGImageDestinationCreateWithData(Mutable, v51, 1uLL, 0);
            theStringa = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloatType, &valuePtr);
            keys[0] = kCGImageDestinationLossyCompressionQuality;
            values[0] = theStringa;
            v53 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 1, 0, 0);
            CGImageDestinationAddImage(v52, v27, v53);
            CGImageDestinationFinalize(v52);
            CFRelease(v53);
            CFRelease(theStringa);
            CFRelease(v52);

            v27 = v51;
          }
        }
      }
    }

    else
    {
      Mutable = 0;
    }

LABEL_41:
    v30 = v70;
    goto LABEL_42;
  }

  v46 = 0;
LABEL_78:

  return v46;
}

+ (id)propertyDescriptionsForClass:(Class)a3 inContext:(id)a4
{
  v5 = a4;
  if ([DebugHierarchyObjectProtocolHelper classOverrides_debugHierarchyPropertyDescriptions:a3])
  {
    v6 = [DebugHierarchyObjectProtocolHelper debugHierarchyPropertyDescriptionsOfClass:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end