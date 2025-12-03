@interface HDHealthRecordsExtractionRule
+ (id)extractionRuleWithDefinition:(id)definition error:(id *)error;
- (HDHealthRecordsExtractionRule)init;
- (HDHealthRecordsExtractionRule)initWithKeyPath:(id)path transforms:(id)transforms;
- (id)definitionBySubstitutingKeyPathWith:(id)with;
@end

@implementation HDHealthRecordsExtractionRule

+ (id)extractionRuleWithDefinition:(id)definition error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  definitionCopy = definition;
  if ([definitionCopy length])
  {
    v6 = [definitionCopy componentsSeparatedByString:@"|"];
    v7 = [v6 hk_map:&__block_literal_global_3];

    if ([v7 count])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            if (![*(*(&v18 + 1) + 8 * i) length])
            {
              [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"invalid extraction rule"];

              goto LABEL_15;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      firstObject = [v8 firstObject];
      v14 = [v8 subarrayWithRange:{1, objc_msgSend(v8, "count") - 1}];
      v15 = [[HDHealthRecordsExtractionRule alloc] initWithKeyPath:firstObject transforms:v14];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"no key path specified"];
LABEL_15:
      v15 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"empty extraction rule definition"];
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

id __68__HDHealthRecordsExtractionRule_extractionRuleWithDefinition_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA900];
  v3 = a2;
  v4 = [v2 whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  return v5;
}

- (id)definitionBySubstitutingKeyPathWith:(id)with
{
  withCopy = with;
  if (!withCopy)
  {
    [(HDHealthRecordsExtractionRule *)a2 definitionBySubstitutingKeyPathWith:?];
  }

  if ([(NSArray *)self->_transforms count])
  {
    v6 = [(NSArray *)self->_transforms componentsJoinedByString:@" | "];
    v7 = [withCopy stringByAppendingFormat:@" | %@", v6];
  }

  else
  {
    v7 = withCopy;
  }

  return v7;
}

- (HDHealthRecordsExtractionRule)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDHealthRecordsExtractionRule)initWithKeyPath:(id)path transforms:(id)transforms
{
  pathCopy = path;
  transformsCopy = transforms;
  v9 = transformsCopy;
  if (pathCopy)
  {
    if (transformsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HDHealthRecordsExtractionRule initWithKeyPath:a2 transforms:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [HDHealthRecordsExtractionRule initWithKeyPath:a2 transforms:self];
LABEL_3:
  v16.receiver = self;
  v16.super_class = HDHealthRecordsExtractionRule;
  v10 = [(HDHealthRecordsExtractionRule *)&v16 init];
  if (v10)
  {
    v11 = [pathCopy copy];
    keyPath = v10->_keyPath;
    v10->_keyPath = v11;

    v13 = [v9 copy];
    transforms = v10->_transforms;
    v10->_transforms = v13;
  }

  return v10;
}

@end