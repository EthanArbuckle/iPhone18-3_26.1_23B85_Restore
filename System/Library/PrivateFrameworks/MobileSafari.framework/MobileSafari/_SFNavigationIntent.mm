@interface _SFNavigationIntent
+ (int64_t)defaultTabOrder;
+ (int64_t)effectiveTabOrderWithPreferredTabOrder:(int64_t)order;
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
- (id)_initWithType:(unint64_t)type value:(id)value policy:(int64_t)policy;
- (id)description;
@end

@implementation _SFNavigationIntent

+ (int64_t)defaultTabOrder
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  if ([safari_browserDefaults BOOLForKey:@"OpenLinksInBackground"])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

+ (int64_t)effectiveTabOrderWithPreferredTabOrder:(int64_t)order
{
  if (order)
  {
    return order;
  }

  else
  {
    return +[_SFNavigationIntent defaultTabOrder];
  }
}

- (id)_initWithType:(unint64_t)type value:(id)value policy:(int64_t)policy
{
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = _SFNavigationIntent;
  v10 = [(_SFNavigationIntent *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    objc_storeStrong(&v10->_value, value);
    v11->_policy = policy;
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
      recentlyClosedTabStateData = [(_SFNavigationIntent *)self recentlyClosedTabStateData];
      address = [recentlyClosedTabStateData url];
LABEL_14:
      v8 = address;
      v4 = [v5 URLWithString:address];

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
    recentlyClosedTabStateData = [(_SFNavigationIntent *)self bookmark];
    address = [recentlyClosedTabStateData address];
    goto LABEL_14;
  }

  recentlyClosedTabStateData = [(_SFNavigationIntent *)self cloudTab];
  v4 = [recentlyClosedTabStateData url];
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
    options = [self->_value options];
    if (objc_opt_respondsToSelector())
    {
      eventAttribution = [options eventAttribution];
    }

    else
    {
      eventAttribution = 0;
    }
  }

  else
  {
    eventAttribution = 0;
  }

  return eventAttribution;
}

- (NSDictionary)externalOptions
{
  if (self->_type == 9)
  {
    uRLOptionsDictionary = [self->_value URLOptionsDictionary];
  }

  else
  {
    uRLOptionsDictionary = MEMORY[0x1E695E0F8];
  }

  return uRLOptionsDictionary;
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
      navigationIntents = [(_SFNavigationIntent *)self navigationIntents];
      v6 = [navigationIntents objectAtIndexedSubscript:0];
      canUseExistingBlankTab = [v6 canUseExistingBlankTab];

      return canUseExistingBlankTab;
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

      text = [(_SFNavigationIntent *)self text];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v9 = [text safari_stringByRemovingCharactersInSet:whitespaceAndNewlineCharacterSet];
      v10 = [v9 length];

      v11 = MEMORY[0x1E696AEC0];
      v12 = [text length];
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
        text = [(_SFNavigationIntent *)self webClip];
        uuid = [text uuid];
        uUIDString = [uuid UUIDString];
        v3 = [v25 stringWithFormat:@"<web clip identifier = %@>", uUIDString];;

        goto LABEL_15;
      }

      v14 = MEMORY[0x1E696AEC0];
      text = [(_SFNavigationIntent *)self URL];
      uuid = [text scheme];
      [v14 stringWithFormat:@"<service worker open URL; scheme = %@>", uuid];
      v3 = LABEL_14:;
LABEL_15:

LABEL_16:
      goto LABEL_17;
    }

LABEL_13:
    v16 = MEMORY[0x1E696AEC0];
    text = [(_SFNavigationIntent *)self URL];
    uuid = [text scheme];
    [v16 stringWithFormat:@"<url; scheme = %@>", uuid];
    goto LABEL_14;
  }

  if ((type - 9) < 2)
  {
    goto LABEL_13;
  }

  if (type == 11)
  {
    navigationIntents = [(_SFNavigationIntent *)self navigationIntents];
    text = [navigationIntents safari_mapObjectsUsingBlock:&__block_literal_global_32];

    v24 = MEMORY[0x1E696AEC0];
    uuid = [text componentsJoinedByString:{@", \n\t"}];
    [v24 stringWithFormat:@"[\n\t%@\n]", uuid];
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

  options = [self->_value options];
  sourceApplication = [options sourceApplication];
  v4 = [sourceApplication isEqualToString:@"com.apple.Spotlight"];

  return v4;
}

@end