@interface OITSUMutableCustomFormat
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation OITSUMutableCustomFormat

- (id)copyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [OITSUCustomFormat allocWithZone:zone];
  formatName = [(OITSUCustomFormat *)self formatName];
  formatType = [(OITSUCustomFormat *)self formatType];
  defaultFormatData = [(OITSUCustomFormat *)self defaultFormatData];
  v8 = [(OITSUCustomFormat *)v4 initWithName:formatName formatType:formatType data:defaultFormatData];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  conditionList = [(OITSUCustomFormat *)self conditionList];
  v10 = [conditionList countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(conditionList);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        conditionType = [v14 conditionType];
        [v14 conditionValue];
        v17 = v16;
        data = [v14 data];
        [(OITSUCustomFormat *)v8 p_addConditionOfType:conditionType value:data data:v17];
      }

      v11 = [conditionList countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v8;
}

@end