@interface _MPUHTMLDefaultDelegate
- (id)parser:(id)a3 attributesForTagName:(id)a4 tagAttributes:(id)a5 currentState:(id)a6;
- (id)parser:(id)a3 prependStringForTagName:(id)a4;
@end

@implementation _MPUHTMLDefaultDelegate

- (id)parser:(id)a3 attributesForTagName:(id)a4 tagAttributes:(id)a5 currentState:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = [a6 attributes];
  v11 = *MEMORY[0x277D740A8];
  v12 = [v10 objectForKey:*MEMORY[0x277D740A8]];

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = [v12 fontDescriptor];
  if (([v8 isEqualToString:@"b"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"strong"))
  {
    [v12 pointSize];
    v16 = v14;
    v17 = 2;
LABEL_4:
    v18 = _MPUHTMLDefaultDelegateFontByAddingTraits(v16, v17, v15);
    [v13 setObject:v18 forKey:v11];

    goto LABEL_5;
  }

  if (([v8 isEqualToString:@"i"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"em"))
  {
    [v12 pointSize];
    v16 = v14;
    v17 = 1;
    goto LABEL_4;
  }

  if ([v8 isEqualToString:@"u"])
  {
    [v13 setObject:&unk_2868EA288 forKey:*MEMORY[0x277D741F0]];
  }

  else if ([v8 isEqualToString:@"a"])
  {
    v21 = [v9 objectForKey:@"href"];
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

- (id)parser:(id)a3 prependStringForTagName:(id)a4
{
  if ([a4 isEqualToString:@"br"])
  {
    return @"\n";
  }

  else
  {
    return 0;
  }
}

@end