@interface _MPUHTMLDefaultDelegate
- (id)parser:(id)parser attributesForTagName:(id)name tagAttributes:(id)attributes currentState:(id)state;
- (id)parser:(id)parser prependStringForTagName:(id)name;
@end

@implementation _MPUHTMLDefaultDelegate

- (id)parser:(id)parser attributesForTagName:(id)name tagAttributes:(id)attributes currentState:(id)state
{
  nameCopy = name;
  attributesCopy = attributes;
  attributes = [state attributes];
  v11 = *MEMORY[0x277D740A8];
  v12 = [attributes objectForKey:*MEMORY[0x277D740A8]];

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  fontDescriptor = [v12 fontDescriptor];
  if (([nameCopy isEqualToString:@"b"] & 1) != 0 || objc_msgSend(nameCopy, "isEqualToString:", @"strong"))
  {
    [v12 pointSize];
    v16 = fontDescriptor;
    v17 = 2;
LABEL_4:
    v18 = _MPUHTMLDefaultDelegateFontByAddingTraits(v16, v17, v15);
    [v13 setObject:v18 forKey:v11];

    goto LABEL_5;
  }

  if (([nameCopy isEqualToString:@"i"] & 1) != 0 || objc_msgSend(nameCopy, "isEqualToString:", @"em"))
  {
    [v12 pointSize];
    v16 = fontDescriptor;
    v17 = 1;
    goto LABEL_4;
  }

  if ([nameCopy isEqualToString:@"u"])
  {
    [v13 setObject:&unk_2868EA288 forKey:*MEMORY[0x277D741F0]];
  }

  else if ([nameCopy isEqualToString:@"a"])
  {
    v21 = [attributesCopy objectForKey:@"href"];
    v22 = [MEMORY[0x277CBEBC0] URLWithString:v21];
    if (v22)
    {
      [v13 setObject:v22 forKey:*MEMORY[0x277D740E8]];
    }
  }

LABEL_5:
  if ([v13 count])
  {
    v19 = v13;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)parser:(id)parser prependStringForTagName:(id)name
{
  if ([name isEqualToString:@"br"])
  {
    return @"\n";
  }

  else
  {
    return 0;
  }
}

@end