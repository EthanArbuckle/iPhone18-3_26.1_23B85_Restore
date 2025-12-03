@interface DNDMode(Record)
+ (id)modeForRecord:()Record;
- (DNDSMutableModeRecord)makeRecord;
@end

@implementation DNDMode(Record)

+ (id)modeForRecord:()Record
{
  v3 = a3;
  if (![v3 symbolDescriptorTintStyle])
  {
    symbolDescriptorTintColorNames = [v3 symbolDescriptorTintColorNames];
    if (symbolDescriptorTintColorNames)
    {
    }

    else
    {
      symbolDescriptorImageName = [v3 symbolDescriptorImageName];

      if (!symbolDescriptorImageName)
      {
        goto LABEL_6;
      }
    }
  }

  v6 = objc_alloc(MEMORY[0x277D05A58]);
  symbolDescriptorTintStyle = [v3 symbolDescriptorTintStyle];
  symbolDescriptorTintColorNames2 = [v3 symbolDescriptorTintColorNames];
  symbolDescriptorImageName2 = [v3 symbolDescriptorImageName];
  symbolDescriptorImageName = [v6 initWithTintStyle:symbolDescriptorTintStyle tintColorNames:symbolDescriptorTintColorNames2 imageName:symbolDescriptorImageName2];

LABEL_6:
  v10 = objc_alloc(MEMORY[0x277D05930]);
  name = [v3 name];
  modeIdentifier = [v3 modeIdentifier];
  symbolImageName = [v3 symbolImageName];
  tintColorName = [v3 tintColorName];
  semanticType = [v3 semanticType];
  visibility = [v3 visibility];
  identifier = [v3 identifier];
  v18 = [v10 initWithName:name modeIdentifier:modeIdentifier symbolImageName:symbolImageName tintColorName:tintColorName symbolDescriptor:symbolDescriptorImageName semanticType:semanticType visibility:visibility identifier:identifier];

  return v18;
}

- (DNDSMutableModeRecord)makeRecord
{
  v2 = objc_alloc_init(DNDSMutableModeRecord);
  _name = [self _name];
  [(DNDSMutableModeRecord *)v2 setName:_name];

  modeIdentifier = [self modeIdentifier];
  [(DNDSMutableModeRecord *)v2 setModeIdentifier:modeIdentifier];

  _symbolImageName = [self _symbolImageName];
  [(DNDSMutableModeRecord *)v2 setSymbolImageName:_symbolImageName];

  _tintColorName = [self _tintColorName];
  [(DNDSMutableModeRecord *)v2 setTintColorName:_tintColorName];

  symbolDescriptor = [self symbolDescriptor];
  -[DNDSMutableModeRecord setSymbolDescriptorTintStyle:](v2, "setSymbolDescriptorTintStyle:", [symbolDescriptor tintStyle]);

  symbolDescriptor2 = [self symbolDescriptor];
  tintColorNames = [symbolDescriptor2 tintColorNames];
  [(DNDSMutableModeRecord *)v2 setSymbolDescriptorTintColorNames:tintColorNames];

  symbolDescriptor3 = [self symbolDescriptor];
  imageName = [symbolDescriptor3 imageName];
  [(DNDSMutableModeRecord *)v2 setSymbolDescriptorImageName:imageName];

  -[DNDSMutableModeRecord setSemanticType:](v2, "setSemanticType:", [self semanticType]);
  -[DNDSMutableModeRecord setVisibility:](v2, "setVisibility:", [self visibility]);
  identifier = [self identifier];
  [(DNDSMutableModeRecord *)v2 setIdentifier:identifier];

  return v2;
}

@end