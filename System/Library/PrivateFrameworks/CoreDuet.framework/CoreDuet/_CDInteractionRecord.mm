@interface _CDInteractionRecord
- (NSString)conversationId;
@end

@implementation _CDInteractionRecord

- (NSString)conversationId
{
  bundleId = [(_CDInteractionRecord *)self bundleId];
  if ([bundleId isEqualToString:@"com.apple.MobileSMS"])
  {

LABEL_4:
    domainIdentifier = [(_CDInteractionRecord *)self domainIdentifier];
LABEL_5:
    v7 = domainIdentifier;
    goto LABEL_6;
  }

  targetBundleId = [(_CDInteractionRecord *)self targetBundleId];
  v5 = [targetBundleId isEqualToString:@"com.apple.UIKit.activity.Message"];

  if (v5)
  {
    goto LABEL_4;
  }

  if ([(_CDInteractionRecord *)self mechanism]!= 10 && [(_CDInteractionRecord *)self mechanism]!= 11 && [(_CDInteractionRecord *)self mechanism]!= 17 && [(_CDInteractionRecord *)self mechanism]!= 16 && [(_CDInteractionRecord *)self mechanism])
  {
    domainIdentifier = [(_CDInteractionRecord *)self derivedIntentIdentifier];
    goto LABEL_5;
  }

  recipients = [(_CDInteractionRecord *)self recipients];
  if ([recipients count] != 1)
  {

LABEL_19:
    recipients2 = [(_CDInteractionRecord *)self recipients];
    if ([recipients2 count])
    {
    }

    else
    {
      sender = [(_CDInteractionRecord *)self sender];
      identifier = [sender identifier];

      if (identifier)
      {
        v20 = objc_alloc(MEMORY[0x1E696AEC0]);
        sender2 = [(_CDInteractionRecord *)self sender];
        identifier2 = [sender2 identifier];
        v7 = [v20 initWithFormat:@"any;-;%@", identifier2];
        goto LABEL_24;
      }
    }

    v7 = 0;
    goto LABEL_6;
  }

  recipients3 = [(_CDInteractionRecord *)self recipients];
  anyObject = [recipients3 anyObject];
  identifier3 = [anyObject identifier];

  if (!identifier3)
  {
    goto LABEL_19;
  }

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  sender2 = [(_CDInteractionRecord *)self recipients];
  identifier2 = [sender2 anyObject];
  v15Identifier = [identifier2 identifier];
  v7 = [v13 initWithFormat:@"any;-;%@", v15Identifier];

LABEL_24:
LABEL_6:

  return v7;
}

@end