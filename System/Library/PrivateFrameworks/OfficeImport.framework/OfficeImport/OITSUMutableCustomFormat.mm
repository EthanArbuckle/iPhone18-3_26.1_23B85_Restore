@interface OITSUMutableCustomFormat
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation OITSUMutableCustomFormat

- (id)copyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [OITSUCustomFormat allocWithZone:a3];
  v5 = [(OITSUCustomFormat *)self formatName];
  v6 = [(OITSUCustomFormat *)self formatType];
  v7 = [(OITSUCustomFormat *)self defaultFormatData];
  v8 = [(OITSUCustomFormat *)v4 initWithName:v5 formatType:v6 data:v7];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(OITSUCustomFormat *)self conditionList];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 conditionType];
        [v14 conditionValue];
        v17 = v16;
        v18 = [v14 data];
        [(OITSUCustomFormat *)v8 p_addConditionOfType:v15 value:v18 data:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v8;
}

@end