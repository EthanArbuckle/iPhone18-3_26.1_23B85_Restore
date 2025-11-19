@interface _SFNavigationIntent
+ (int64_t)defaultTabOrder;
+ (int64_t)effectiveTabOrderWithPreferredTabOrder:(int64_t)a3;
- (BOOL)canUseExistingBlankTab;
- (BOOL)externalURLSourceApplicationIsSpotlight;
- (NSArray)navigationIntents;
- (NSDictionary)externalOptions;
- (NSString)privacyPreservingDescription;
- (NSString)text;
- (NSURL)URL;
- (SFTabStateData)recentlyClosedTabStateData;
- (UIEventAttribution)eventAttribution;
- (UIWebClip)webClip;
- (WBSCloudTabItem)cloudTab;
- (WebBookmark)bookmark;
- (id)_initWithType:(unint64_t)a3 value:(id)a4 policy:(int64_t)a5;
- (id)description;
@end

@implementation _SFNavigationIntent

+ (int64_t)defaultTabOrder
{
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  if ([v2 BOOLForKey:@"OpenLinksInBackground"])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

+ (int64_t)effectiveTabOrderWithPreferredTabOrder:(int64_t)a3
{
  if (a3)
  {
    return a3;
  }

  else
  {
    return +[_SFNavigationIntent defaultTabOrder];
  }
}

- (id)_initWithType:(unint64_t)a3 value:(id)a4 policy:(int64_t)a5
{
  v9 = a4;
  v14.receiver = self;
  v14.super_class = _SFNavigationIntent;
  v10 = [(_SFNavigationIntent *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    objc_storeStrong(&v10->_value, a4);
    v11->_policy = a5;
    v11->_shouldRelateToSourceTab = 1;
    v12 = v11;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromNavigationIntentType(self->_type);
  v6 = NSStringFromNavigationIntentPolicy(self->_policy);
  v7 = [v3 stringWithFormat:@"<%@: %p type = %@; policy = %@; value = %@", v4, self, v5, v6, self->_value];;

  if ([(_SFNavigationIntent *)self shouldRelateToSourceTab])
  {
    [v7 appendFormat:@"; sourceWindow = %@", self->_sourceWindowUUID];
    [v7 appendFormat:@"; sourceTab = %@", self->_sourceTabUUID];
  }

  [v7 appendString:@">"];
  v8 = [v7 copy];

  return v8;
}

- (WebBookmark)bookmark
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_value;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SFTabStateData)recentlyClosedTabStateData
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_value;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (WBSCloudTabItem)cloudTab
{
  if ([self->_value conformsToProtocol:&unk_1F0000378])
  {
    v3 = self->_value;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSURL)URL
{
  type = self->_type;
  if (type <= 0xA)
  {
    if (((1 << type) & 0x544) != 0)
    {
      v3 = self->_value;
LABEL_4:
      v4 = v3;
      goto LABEL_16;
    }

    if (type == 3)
    {
      v5 = MEMORY[0x1E695DFF8];
      v6 = [(_SFNavigationIntent *)self recentlyClosedTabStateData];
      v7 = [v6 url];
LABEL_14:
      v8 = v7;
      v4 = [v5 URLWithString:v7];

      goto LABEL_15;
    }

    if (type == 9)
    {
      v3 = [self->_value URL];
      goto LABEL_4;
    }
  }

  if (type != 1)
  {
    if (type)
    {
      v4 = 0;
      goto LABEL_16;
    }

    v5 = MEMORY[0x1E695DFF8];
    v6 = [(_SFNavigationIntent *)self bookmark];
    v7 = [v6 address];
    goto LABEL_14;
  }

  v6 = [(_SFNavigationIntent *)self cloudTab];
  v4 = [v6 url];
LABEL_15:

LABEL_16:

  return v4;
}

- (UIWebClip)webClip
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_value;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)text
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_value;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIEventAttribution)eventAttribution
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [self->_value options];
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 eventAttribution];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)externalOptions
{
  if (self->_type == 9)
  {
    v4 = [self->_value URLOptionsDictionary];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  return v4;
}

- (NSArray)navigationIntents
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_value;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)canUseExistingBlankTab
{
  type = self->_type;
  switch(type)
  {
    case 0xBuLL:
      v5 = [(_SFNavigationIntent *)self navigationIntents];
      v6 = [v5 objectAtIndexedSubscript:0];
      v7 = [v6 canUseExistingBlankTab];

      return v7;
    case 9uLL:
      return 1;
    case 3uLL:
      return 0;
    default:
      return [(_SFNavigationIntent *)self opensInNewWindow]|| ![(_SFNavigationIntent *)self opensInNewTab]|| self->_policy == 3;
  }
}

- (NSString)privacyPreservingDescription
{
  v3 = 0;
  type = self->_type;
  if (type <= 5)
  {
    v5 = type >= 4;
    v6 = type - 4;
    if (v5)
    {
      if (v6 >= 2)
      {
        goto LABEL_17;
      }

      v7 = [(_SFNavigationIntent *)self text];
      v8 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v9 = [v7 safari_stringByRemovingCharactersInSet:v8];
      v10 = [v9 length];

      v11 = MEMORY[0x1E696AEC0];
      v12 = [v7 length];
      v13 = @"false";
      if (!v10)
      {
        v13 = @"true";
      }

      v3 = [v11 stringWithFormat:@"<text length = %lu; onlyWhitespace = %@>", v12, v13];;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (type <= 8)
  {
    if (type != 6)
    {
      if (type == 7)
      {
        v25 = MEMORY[0x1E696AEC0];
        v7 = [(_SFNavigationIntent *)self webClip];
        v15 = [v7 uuid];
        v26 = [v15 UUIDString];
        v3 = [v25 stringWithFormat:@"<web clip identifier = %@>", v26];;

        goto LABEL_15;
      }

      v14 = MEMORY[0x1E696AEC0];
      v7 = [(_SFNavigationIntent *)self URL];
      v15 = [v7 scheme];
      [v14 stringWithFormat:@"<service worker open URL; scheme = %@>", v15];
      v3 = LABEL_14:;
LABEL_15:

LABEL_16:
      goto LABEL_17;
    }

LABEL_13:
    v16 = MEMORY[0x1E696AEC0];
    v7 = [(_SFNavigationIntent *)self URL];
    v15 = [v7 scheme];
    [v16 stringWithFormat:@"<url; scheme = %@>", v15];
    goto LABEL_14;
  }

  if ((type - 9) < 2)
  {
    goto LABEL_13;
  }

  if (type == 11)
  {
    v23 = [(_SFNavigationIntent *)self navigationIntents];
    v7 = [v23 safari_mapObjectsUsingBlock:&__block_literal_global_32];

    v24 = MEMORY[0x1E696AEC0];
    v15 = [v7 componentsJoinedByString:{@", \n\t"}];
    [v24 stringWithFormat:@"[\n\t%@\n]", v15];
    goto LABEL_14;
  }

LABEL_17:
  v17 = MEMORY[0x1E696AEC0];
  v18 = objc_opt_class();
  v19 = NSStringFromNavigationIntentType(self->_type);
  v20 = NSStringFromNavigationIntentPolicy(self->_policy);
  v21 = [v17 stringWithFormat:@"<%@ type = %@; policy = %@; value = %@>", v18, v19, v20, v3];;

  return v21;
}

- (BOOL)externalURLSourceApplicationIsSpotlight
{
  if (self->_type != 9)
  {
    return 0;
  }

  v2 = [self->_value options];
  v3 = [v2 sourceApplication];
  v4 = [v3 isEqualToString:@"com.apple.Spotlight"];

  return v4;
}

@end