@interface ICCRRegisterMultiValueLeast
- (id)contents;
@end

@implementation ICCRRegisterMultiValueLeast

- (id)contents
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(ICCRRegisterMultiValue *)self values];
  v3 = 0;
  v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (!v3 || [v3 compare:*(*(&v10 + 1) + 8 * i)] == 1)
        {
          v8 = v7;

          v3 = v8;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return v3;
}

@end