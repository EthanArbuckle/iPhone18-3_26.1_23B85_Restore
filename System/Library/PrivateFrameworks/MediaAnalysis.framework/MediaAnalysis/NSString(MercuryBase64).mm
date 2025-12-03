@interface NSString(MercuryBase64)
- (id)vcp_mercuryBase64ToLocalIdentifier;
@end

@implementation NSString(MercuryBase64)

- (id)vcp_mercuryBase64ToLocalIdentifier
{
  if ([self vcp_isMercuryBase64])
  {
    v2 = [self copy];
    v3 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"%"];
    v5 = [v2 rangeOfCharacterFromSet:v3 options:0];
    while (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [v2 stringByReplacingOccurrencesOfString:@"%" withString:@"/" options:0 range:{v5, v4}];

      v5 = [v6 rangeOfCharacterFromSet:v3 options:0];
      v2 = v6;
    }

    v8 = [v2 stringByAppendingString:@"=="];

    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8 options:0];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(v9, "bytes")}];
      v11 = MEMORY[0x1E6978628];
      uUIDString = [v10 UUIDString];
      v7 = [v11 localIdentifierWithUUID:uUIDString];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end