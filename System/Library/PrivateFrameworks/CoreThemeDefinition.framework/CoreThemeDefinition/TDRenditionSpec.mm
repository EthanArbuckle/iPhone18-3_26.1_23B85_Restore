@interface TDRenditionSpec
- (BOOL)canBePackedWithDocument:(id)document;
- (CGPoint)packedPoint;
- (TDRenditionType)renditionType;
- (id)propertiesAsDictionary;
- (void)awakeFromInsert;
- (void)resetToBaseKeySpec;
- (void)setPackedPoint:(CGPoint)point;
- (void)setRenditionType:(id)type;
@end

@implementation TDRenditionSpec

- (void)awakeFromInsert
{
  if (![(TDRenditionSpec *)self keySpec])
  {
    v3 = -[TDRenditionKeySpec initWithEntity:insertIntoManagedObjectContext:]([TDRenditionKeySpec alloc], "initWithEntity:insertIntoManagedObjectContext:", [objc_msgSend(objc_msgSend(-[TDRenditionSpec entity](self "entity")], -[TDRenditionSpec managedObjectContext](self, "managedObjectContext"));
    [(TDRenditionSpec *)self setKeySpec:v3];
  }
}

- (void)resetToBaseKeySpec
{
  if ([(TDRenditionSpec *)self production]&& [(TDRenditionSpec *)self keySpec])
  {
    v3 = [objc_msgSend(-[TDRenditionSpec production](self "production")];
    keySpec = [(TDRenditionSpec *)self keySpec];

    [keySpec setValuesForKeysWithDictionary:v3];
  }
}

- (id)propertiesAsDictionary
{
  v16 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  properties = [(TDRenditionSpec *)self properties];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [properties countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(properties);
        }

        [*(*(&v11 + 1) + 8 * v8++) addToDictionary:dictionary];
      }

      while (v6 != v8);
      v6 = [properties countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
  return dictionary;
}

- (TDRenditionType)renditionType
{
  [(TDRenditionSpec *)self willAccessValueForKey:@"renditionType"];
  primitiveRenditionType = [(TDRenditionSpec *)self primitiveRenditionType];
  [(TDRenditionSpec *)self didAccessValueForKey:@"renditionType"];
  if (primitiveRenditionType)
  {
    return primitiveRenditionType;
  }

  production = [(TDRenditionSpec *)self production];

  return [production renditionType];
}

- (void)setRenditionType:(id)type
{
  identifier = [type identifier];
  if (identifier == [objc_msgSend(-[TDRenditionSpec production](self "production")] || identifier == 1010 || identifier == 6)
  {
    [(TDRenditionSpec *)self willChangeValueForKey:@"renditionType"];
    [(TDRenditionSpec *)self setPrimitiveRenditionType:type];

    [(TDRenditionSpec *)self didChangeValueForKey:@"renditionType"];
  }

  else if ([(TDRenditionSpec *)self production])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"Incompatible rendition type '%@'.  Must gradient or multisize image set.", objc_msgSend(objc_msgSend(-[TDRenditionSpec production](self, "production"), "name"), "name")}];
  }

  else
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE648];

    [v6 raise:v7 format:@"Missing production."];
  }
}

- (void)setPackedPoint:(CGPoint)point
{
  y = point.y;
  [(TDRenditionSpec *)self setPackedPointX:point.x];

  [(TDRenditionSpec *)self setPackedPointY:y];
}

- (CGPoint)packedPoint
{
  packedPointX = [(TDRenditionSpec *)self packedPointX];
  packedPointY = [(TDRenditionSpec *)self packedPointY];
  v5 = packedPointX;
  result.y = packedPointY;
  result.x = v5;
  return result;
}

- (BOOL)canBePackedWithDocument:(id)document
{
  width = [(TDRenditionSpec *)self width];
  height = [(TDRenditionSpec *)self height];
  result = 0;
  if (width && height)
  {
    v7 = [-[TDRenditionSpec keySpec](self "keySpec")];
    if (([(TDRenditionSpec *)self alphaCrop]& 1) == 0 && height * width > [CoreThemeDocument maximumAreaOfPackableImageForScale:v7])
    {
      return 0;
    }

    identifier = [(TDThemeConstant *)[(TDRenditionSpec *)self renditionType] identifier];
    v9 = identifier;
    if (identifier > 9)
    {
      return 0;
    }

    result = 1;
    if (((1 << v9) & 0x13F) == 0)
    {
      return 0;
    }
  }

  return result;
}

@end