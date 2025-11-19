@interface _CDInteractionRecord
- (NSString)conversationId;
@end

@implementation _CDInteractionRecord

- (NSString)conversationId
{
  v3 = [(_CDInteractionRecord *)self bundleId];
  if ([v3 isEqualToString:@"com.apple.MobileSMS"])
  {

LABEL_4:
    v6 = [(_CDInteractionRecord *)self domainIdentifier];
LABEL_5:
    v7 = v6;
    goto LABEL_6;
  }

  v4 = [(_CDInteractionRecord *)self targetBundleId];
  v5 = [v4 isEqualToString:@"com.apple.UIKit.activity.Message"];

  if (v5)
  {
    goto LABEL_4;
  }

  if ([(_CDInteractionRecord *)self mechanism]!= 10 && [(_CDInteractionRecord *)self mechanism]!= 11 && [(_CDInteractionRecord *)self mechanism]!= 17 && [(_CDInteractionRecord *)self mechanism]!= 16 && [(_CDInteractionRecord *)self mechanism])
  {
    v6 = [(_CDInteractionRecord *)self derivedIntentIdentifier];
    goto LABEL_5;
  }

  v9 = [(_CDInteractionRecord *)self recipients];
  if ([v9 count] != 1)
  {

LABEL_19:
    v17 = [(_CDInteractionRecord *)self recipients];
    if ([v17 count])
    {
    }

    else
    {
      v18 = [(_CDInteractionRecord *)self sender];
      v19 = [v18 identifier];

      if (v19)
      {
        v20 = objc_alloc(MEMORY[0x1E696AEC0]);
        v14 = [(_CDInteractionRecord *)self sender];
        v15 = [v14 identifier];
        v7 = [v20 initWithFormat:@"any;-;%@", v15];
        goto LABEL_24;
      }
    }

    v7 = 0;
    goto LABEL_6;
  }

  v10 = [(_CDInteractionRecord *)self recipients];
  v11 = [v10 anyObject];
  v12 = [v11 identifier];

  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [(_CDInteractionRecord *)self recipients];
  v15 = [v14 anyObject];
  v16 = [v15 identifier];
  v7 = [v13 initWithFormat:@"any;-;%@", v16];

LABEL_24:
LABEL_6:

  return v7;
}

@end