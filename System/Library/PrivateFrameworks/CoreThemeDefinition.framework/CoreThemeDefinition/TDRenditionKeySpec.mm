@interface TDRenditionKeySpec
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (const)key;
- (id)copyDataFromAttributes;
- (id)dataFromAttributes;
- (id)keyDescription;
- (unsigned)dimension1;
- (unsigned)dimension2;
- (unsigned)memoryClass;
- (unsigned)nameIdentifier;
- (unsigned)scaleFactor;
- (unsigned)subtype;
- (void)copyAttributesInto:(id)into;
- (void)dealloc;
- (void)getKey:(_renditionkeytoken *)key;
- (void)setAttributesFromCopyData:(id)data;
- (void)setAttributesFromData:(id)data;
- (void)setAttributesFromRenditionKey:(const _renditionkeytoken *)key withDocument:(id)document;
- (void)setDimension1:(unsigned int)dimension1;
- (void)setDimension2:(unsigned int)dimension2;
- (void)setMemoryClass:(unsigned int)class;
- (void)setNameIdentifier:(unsigned int)identifier;
- (void)setScaleFactor:(unsigned int)factor;
- (void)setScaleFactorString:(id)string;
- (void)setSubtype:(unsigned int)subtype;
@end

@implementation TDRenditionKeySpec

- (void)dealloc
{
  scratchKey = self->_scratchKey;
  if (scratchKey)
  {
    free(scratchKey);
  }

  v4.receiver = self;
  v4.super_class = TDRenditionKeySpec;
  [(TDRenditionKeySpec *)&v4 dealloc];
}

- (void)setDimension1:(unsigned int)dimension1
{
  [(TDRenditionKeySpec *)self willChangeValueForKey:@"dimension1"];
  self->_dimension1 = dimension1;

  [(TDRenditionKeySpec *)self didChangeValueForKey:@"dimension1"];
}

- (unsigned)dimension1
{
  [(TDRenditionKeySpec *)self willAccessValueForKey:@"dimension1"];
  dimension1 = self->_dimension1;
  [(TDRenditionKeySpec *)self didAccessValueForKey:@"dimension1"];
  return dimension1;
}

- (void)setDimension2:(unsigned int)dimension2
{
  [(TDRenditionKeySpec *)self willChangeValueForKey:@"dimension2"];
  self->_dimension2 = dimension2;

  [(TDRenditionKeySpec *)self didChangeValueForKey:@"dimension2"];
}

- (unsigned)dimension2
{
  [(TDRenditionKeySpec *)self willAccessValueForKey:@"dimension2"];
  dimension2 = self->_dimension2;
  [(TDRenditionKeySpec *)self didAccessValueForKey:@"dimension2"];
  return dimension2;
}

- (void)setScaleFactor:(unsigned int)factor
{
  [(TDRenditionKeySpec *)self willChangeValueForKey:@"scaleFactor"];
  self->_scaleFactor = factor;

  [(TDRenditionKeySpec *)self didChangeValueForKey:@"scaleFactor"];
}

- (unsigned)scaleFactor
{
  [(TDRenditionKeySpec *)self willAccessValueForKey:@"scaleFactor"];
  scaleFactor = self->_scaleFactor;
  [(TDRenditionKeySpec *)self didAccessValueForKey:@"scaleFactor"];
  return scaleFactor;
}

- (void)setSubtype:(unsigned int)subtype
{
  [(TDRenditionKeySpec *)self willAccessValueForKey:@"subtype"];
  self->_subtype = subtype;

  [(TDRenditionKeySpec *)self didAccessValueForKey:@"subtype"];
}

- (unsigned)subtype
{
  [(TDRenditionKeySpec *)self willAccessValueForKey:@"subtype"];
  subtype = self->_subtype;
  [(TDRenditionKeySpec *)self didAccessValueForKey:@"subtype"];
  return subtype;
}

- (void)setNameIdentifier:(unsigned int)identifier
{
  [(TDRenditionKeySpec *)self willAccessValueForKey:@"nameIdentifier"];
  self->_nameIdentifier = identifier;

  [(TDRenditionKeySpec *)self didAccessValueForKey:@"nameIdentifier"];
}

- (unsigned)nameIdentifier
{
  [(TDRenditionKeySpec *)self willAccessValueForKey:@"nameIdentifier"];
  nameIdentifier = self->_nameIdentifier;
  [(TDRenditionKeySpec *)self didAccessValueForKey:@"nameIdentifier"];
  return nameIdentifier;
}

- (void)setMemoryClass:(unsigned int)class
{
  [(TDRenditionKeySpec *)self willAccessValueForKey:@"memoryClass"];
  self->_memoryClass = class;

  [(TDRenditionKeySpec *)self didAccessValueForKey:@"memoryClass"];
}

- (unsigned)memoryClass
{
  [(TDRenditionKeySpec *)self willAccessValueForKey:@"memoryClass"];
  memoryClass = self->_memoryClass;
  [(TDRenditionKeySpec *)self willAccessValueForKey:@"memoryClass"];
  return memoryClass;
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___TDRenditionKeySpec;
  v4 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingValueForKey_);
  if ([key isEqualToString:@"scaleFactorString"])
  {
    return [v4 setByAddingObjectsFromSet:{objc_msgSend(MEMORY[0x277CBEB98], "setWithObjects:", @"scaleFactor", 0)}];
  }

  return v4;
}

- (void)setScaleFactorString:(id)string
{
  intValue = [string intValue];

  [(TDRenditionKeySpec *)self setScaleFactor:intValue];
}

- (void)setAttributesFromRenditionKey:(const _renditionkeytoken *)key withDocument:(id)document
{
  identifier = key->identifier;
  if (key->identifier)
  {
    v7 = key + 1;
    do
    {
      value = v7[-1].value;
      switch(identifier)
      {
        case 1:
          -[TDRenditionKeySpec setElement:](self, "setElement:", [document elementWithIdentifier:value]);
          break;
        case 2:
          -[TDRenditionKeySpec setPart:](self, "setPart:", [document partWithIdentifier:value]);
          break;
        case 3:
          -[TDRenditionKeySpec setSize:](self, "setSize:", [document sizeWithIdentifier:value]);
          break;
        case 4:
          -[TDRenditionKeySpec setDirection:](self, "setDirection:", [document directionWithIdentifier:value]);
          break;
        case 6:
          -[TDRenditionKeySpec setValue:](self, "setValue:", [document valueWithIdentifier:value]);
          break;
        case 7:
          -[TDRenditionKeySpec setAppearance:](self, "setAppearance:", [document appearanceWithIdentifier:value]);
          break;
        case 8:
          [(TDRenditionKeySpec *)self setDimension1:value];
          break;
        case 9:
          [(TDRenditionKeySpec *)self setDimension2:value];
          break;
        case 10:
          -[TDRenditionKeySpec setState:](self, "setState:", [document stateWithIdentifier:value]);
          break;
        case 11:
          -[TDRenditionKeySpec setLayer:](self, "setLayer:", [document drawingLayerWithIdentifier:value]);
          break;
        case 12:
          [(TDRenditionKeySpec *)self setScaleFactor:value];
          break;
        case 13:
          -[TDRenditionKeySpec setLocalization:](self, "setLocalization:", [document localizationWithIdentifier:value]);
          break;
        case 14:
          -[TDRenditionKeySpec setPresentationState:](self, "setPresentationState:", [document presentationStateWithIdentifier:value]);
          break;
        case 15:
          -[TDRenditionKeySpec setIdiom:](self, "setIdiom:", [document idiomWithIdentifier:value]);
          break;
        case 16:
          [(TDRenditionKeySpec *)self setSubtype:value];
          break;
        case 17:
          [(TDRenditionKeySpec *)self setNameIdentifier:value];
          break;
        case 18:
          -[TDRenditionKeySpec setPreviousValue:](self, "setPreviousValue:", [document valueWithIdentifier:value]);
          break;
        case 19:
          -[TDRenditionKeySpec setPreviousState:](self, "setPreviousState:", [document stateWithIdentifier:value]);
          break;
        case 20:
          -[TDRenditionKeySpec setSizeClassHorizontal:](self, "setSizeClassHorizontal:", [document sizeClassWithIdentifier:value]);
          break;
        case 21:
          -[TDRenditionKeySpec setSizeClassVertical:](self, "setSizeClassVertical:", [document sizeClassWithIdentifier:value]);
          break;
        case 22:
          [(TDRenditionKeySpec *)self setMemoryClass:value];
          break;
        case 23:
          -[TDRenditionKeySpec setGraphicsFeatureSetClass:](self, "setGraphicsFeatureSetClass:", [document graphicsFeatureSetClassWithIdentifier:value]);
          break;
        case 24:
          -[TDRenditionKeySpec setGamut:](self, "setGamut:", [document displayGamutWithIdentifier:value]);
          break;
        case 25:
          -[TDRenditionKeySpec setTarget:](self, "setTarget:", [document deploymentTargetWithIdentifier:value]);
          break;
        case 26:
          -[TDRenditionKeySpec setGlyphSize:](self, "setGlyphSize:", [document glyphSizeWithIdentifier:value]);
          break;
        case 27:
          -[TDRenditionKeySpec setGlyphWeight:](self, "setGlyphWeight:", [document glyphWeightWithIdentifier:value]);
          break;
        default:
          NSLog(&cfstr_UnexpectedAttr.isa, a2, value, identifier);
          break;
      }

      v9 = v7->identifier;
      ++v7;
      identifier = v9;
    }

    while (v9);
  }
}

- (void)getKey:(_renditionkeytoken *)key
{
  *key = 0;
  [-[TDRenditionKeySpec element](self "element")];
  CUIRenditionKeySetValueForAttribute();
  [-[TDRenditionKeySpec part](self "part")];
  CUIRenditionKeySetValueForAttribute();
  [-[TDRenditionKeySpec size](self "size")];
  CUIRenditionKeySetValueForAttribute();
  [-[TDRenditionKeySpec direction](self "direction")];
  CUIRenditionKeySetValueForAttribute();
  [-[TDRenditionKeySpec value](self "value")];
  CUIRenditionKeySetValueForAttribute();
  [(TDRenditionKeySpec *)self dimension1];
  CUIRenditionKeySetValueForAttribute();
  [(TDRenditionKeySpec *)self dimension2];
  CUIRenditionKeySetValueForAttribute();
  [-[TDRenditionKeySpec state](self "state")];
  CUIRenditionKeySetValueForAttribute();
  [-[TDRenditionKeySpec presentationState](self "presentationState")];
  CUIRenditionKeySetValueForAttribute();
  [-[TDRenditionKeySpec layer](self "layer")];
  CUIRenditionKeySetValueForAttribute();
  [(TDRenditionKeySpec *)self scaleFactor];
  CUIRenditionKeySetValueForAttribute();
  [(TDRenditionKeySpec *)self nameIdentifier];
  CUIRenditionKeySetValueForAttribute();
  [-[TDRenditionKeySpec idiom](self "idiom")];
  CUIRenditionKeySetValueForAttribute();
  [(TDRenditionKeySpec *)self subtype];
  CUIRenditionKeySetValueForAttribute();
  [-[TDRenditionKeySpec previousState](self "previousState")];
  CUIRenditionKeySetValueForAttribute();
  [-[TDRenditionKeySpec previousValue](self "previousValue")];
  CUIRenditionKeySetValueForAttribute();
  [-[TDRenditionKeySpec sizeClassHorizontal](self "sizeClassHorizontal")];
  CUIRenditionKeySetValueForAttribute();
  [-[TDRenditionKeySpec sizeClassVertical](self "sizeClassVertical")];
  CUIRenditionKeySetValueForAttribute();
  [(TDRenditionKeySpec *)self memoryClass];
  CUIRenditionKeySetValueForAttribute();
  [-[TDRenditionKeySpec graphicsFeatureSetClass](self "graphicsFeatureSetClass")];
  CUIRenditionKeySetValueForAttribute();
  [-[TDRenditionKeySpec gamut](self "gamut")];
  CUIRenditionKeySetValueForAttribute();
  [-[TDRenditionKeySpec target](self "target")];
  CUIRenditionKeySetValueForAttribute();
  [-[TDRenditionKeySpec appearance](self "appearance")];
  CUIRenditionKeySetValueForAttribute();
  [-[TDRenditionKeySpec localization](self "localization")];
  CUIRenditionKeySetValueForAttribute();
  [-[TDRenditionKeySpec glyphWeight](self "glyphWeight")];
  CUIRenditionKeySetValueForAttribute();
  [-[TDRenditionKeySpec glyphSize](self "glyphSize")];

  CUIRenditionKeySetValueForAttribute();
}

- (const)key
{
  scratchKey = self->_scratchKey;
  if (!scratchKey)
  {
    attributeCount = [(TDRenditionKeySpec *)self attributeCount];
    if (attributeCount < 22)
    {
      scratchKey = self->_scratchKey;
      if (!scratchKey)
      {
LABEL_6:
        scratchKey = self->_stackScratchKey;
      }
    }

    else
    {
      scratchKey = malloc_type_malloc(4 * attributeCount + 4, 0x100004052888210uLL);
      self->_scratchKey = scratchKey;
      if (!scratchKey)
      {
        goto LABEL_6;
      }
    }
  }

  [(TDRenditionKeySpec *)self getKey:scratchKey];
  return scratchKey;
}

- (id)keyDescription
{
  v3 = [CoreThemeDocument targetPlatformForMOC:[(TDRenditionKeySpec *)self managedObjectContext]];
  if (!v3)
  {
    v61 = MEMORY[0x277CCACA8];
    v60 = [-[TDRenditionKeySpec element](self "element")];
    v59 = [-[TDRenditionKeySpec part](self "part")];
    v58 = [-[TDRenditionKeySpec size](self "size")];
    v56 = [-[TDRenditionKeySpec direction](self "direction")];
    v54 = [-[TDRenditionKeySpec value](self "value")];
    nameIdentifier = [(TDRenditionKeySpec *)self nameIdentifier];
    dimension1 = [(TDRenditionKeySpec *)self dimension1];
    dimension2 = [(TDRenditionKeySpec *)self dimension2];
    v46 = [-[TDRenditionKeySpec state](self "state")];
    v44 = [-[TDRenditionKeySpec presentationState](self "presentationState")];
    v42 = [-[TDRenditionKeySpec previousState](self "previousState")];
    v13 = [-[TDRenditionKeySpec previousValue](self "previousValue")];
    v14 = [-[TDRenditionKeySpec layer](self "layer")];
    scaleFactor = [(TDRenditionKeySpec *)self scaleFactor];
    v16 = [-[TDRenditionKeySpec gamut](self "gamut")];
    v17 = [-[TDRenditionKeySpec target](self "target")];
    v18 = [-[TDRenditionKeySpec appearance](self "appearance")];
    v19 = [-[TDRenditionKeySpec localization](self "localization")];
    v20 = [-[TDRenditionKeySpec glyphWeight](self "glyphWeight")];
    v39 = [-[TDRenditionKeySpec glyphSize](self "glyphSize")];
    v40 = [-[TDRenditionKeySpec target](self "target")];
    v37 = v19;
    v38 = v20;
    v35 = v17;
    v36 = v18;
    v33 = scaleFactor;
    v34 = v16;
    v31 = v13;
    v32 = v14;
    v29 = v44;
    v30 = v42;
    v28 = v46;
    v27 = dimension2;
    v26 = dimension1;
    v25 = nameIdentifier;
    v24 = v54;
    v23 = v56;
    v22 = v58;
    v12 = @"(M)Key\n\telement:   \t%@\n\tpart:      \t%@\n\tsize:      \t%@\n\tdirection: \t%@\n\tvalue:     \t%@\n\tidentifier:\t%u\n\tdimension1:\t%u\n\tdimension2:\t%u\n\tstate:     \t%@\n\tpresentationState:     \t%@\n\tpreviousState:     \t%@\n\tpreviousValue:     \t%@\n\tlayer:     \t%@\n\tscale:     \t%u\n\tgamut:   \t%@\n\ttarget:    \t%@\n\tappearance:   \t%@\n\tlocalization:      \t%@\n\tglyphWeight:\t%@\n\ttglypSize: \t%@\n\tdeployment:   \t%@";
    return [v61 stringWithFormat:v12, v60, v59, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40];
  }

  if (v3 <= 5)
  {
    v61 = MEMORY[0x277CCACA8];
    v60 = [-[TDRenditionKeySpec element](self "element")];
    v59 = [-[TDRenditionKeySpec part](self "part")];
    v57 = [-[TDRenditionKeySpec value](self "value")];
    nameIdentifier2 = [(TDRenditionKeySpec *)self nameIdentifier];
    dimension12 = [(TDRenditionKeySpec *)self dimension1];
    v51 = [-[TDRenditionKeySpec state](self "state")];
    scaleFactor2 = [(TDRenditionKeySpec *)self scaleFactor];
    v47 = [-[TDRenditionKeySpec idiom](self "idiom")];
    subtype = [(TDRenditionKeySpec *)self subtype];
    v43 = [-[TDRenditionKeySpec gamut](self "gamut")];
    v41 = [-[TDRenditionKeySpec target](self "target")];
    v4 = [-[TDRenditionKeySpec sizeClassHorizontal](self "sizeClassHorizontal")];
    v5 = [-[TDRenditionKeySpec sizeClassVertical](self "sizeClassVertical")];
    v6 = [-[TDRenditionKeySpec graphicsFeatureSetClass](self "graphicsFeatureSetClass")];
    memoryClass = [(TDRenditionKeySpec *)self memoryClass];
    v8 = [-[TDRenditionKeySpec target](self "target")];
    v9 = [-[TDRenditionKeySpec appearance](self "appearance")];
    v10 = [-[TDRenditionKeySpec localization](self "localization")];
    v11 = [-[TDRenditionKeySpec glyphWeight](self "glyphWeight")];
    v39 = [-[TDRenditionKeySpec glyphSize](self "glyphSize")];
    v40 = [-[TDRenditionKeySpec target](self "target")];
    v37 = v10;
    v38 = v11;
    v35 = v8;
    v36 = v9;
    v33 = v6;
    v34 = memoryClass;
    v31 = v4;
    v32 = v5;
    v29 = v43;
    v30 = v41;
    v28 = subtype;
    v27 = v47;
    v26 = scaleFactor2;
    v25 = v51;
    v24 = dimension12;
    v23 = nameIdentifier2;
    v22 = v57;
    v12 = @"(E)Key\n\telement:   \t%@\n\tpart:      \t%@\n\tvalue:     \t%@\n\tidentifier:\t%u\n\tdimension1:\t%u\n\tstate:     \t%@\n\tscale:     \t%u\n\tidiom:   \t%@\n\tsubtype:      \t%u\n\tgamut:   \t%@\n\ttarget:   \t%@\n\tsizeClassHorizontal:   \t%@\n\tsizeClassVertical:   \t%@\n\tgraphicsFeatureSetClass:      \t%@\n\tmemoryClass:      \t%u\n\ttarget:    \t%@\n\tappearance:      \t%@\n\tlocalization:      \t%@\n\tglyphWeight:\t%@\n\ttglypSize: \t%@\n\tdeployment:   \t%@";
    return [v61 stringWithFormat:v12, v60, v59, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40];
  }

  return 0;
}

- (void)copyAttributesInto:(id)into
{
  [into setState:{-[TDRenditionKeySpec state](self, "state")}];
  [into setPresentationState:{-[TDRenditionKeySpec presentationState](self, "presentationState")}];
  [into setValue:{-[TDRenditionKeySpec value](self, "value")}];
  [into setSize:{-[TDRenditionKeySpec size](self, "size")}];
  [into setDirection:{-[TDRenditionKeySpec direction](self, "direction")}];
  [into setPart:{-[TDRenditionKeySpec part](self, "part")}];
  [into setElement:{-[TDRenditionKeySpec element](self, "element")}];
  [into setLayer:{-[TDRenditionKeySpec layer](self, "layer")}];
  [into setPreviousState:{-[TDRenditionKeySpec previousState](self, "previousState")}];
  [into setPreviousValue:{-[TDRenditionKeySpec previousValue](self, "previousValue")}];
  [into setNameIdentifier:{-[TDRenditionKeySpec nameIdentifier](self, "nameIdentifier")}];
  [into setDimension1:{-[TDRenditionKeySpec dimension1](self, "dimension1")}];
  [into setDimension2:{-[TDRenditionKeySpec dimension2](self, "dimension2")}];
  [into setScaleFactor:{-[TDRenditionKeySpec scaleFactor](self, "scaleFactor")}];
  [into setIdiom:{-[TDRenditionKeySpec idiom](self, "idiom")}];
  [into setSubtype:{-[TDRenditionKeySpec subtype](self, "subtype")}];
  [into setGamut:{-[TDRenditionKeySpec gamut](self, "gamut")}];
  [into setTarget:{-[TDRenditionKeySpec target](self, "target")}];
  [into setSizeClassHorizontal:{-[TDRenditionKeySpec sizeClassHorizontal](self, "sizeClassHorizontal")}];
  [into setSizeClassVertical:{-[TDRenditionKeySpec sizeClassVertical](self, "sizeClassVertical")}];
  [into setMemoryClass:{-[TDRenditionKeySpec memoryClass](self, "memoryClass")}];
  [into setGraphicsFeatureSetClass:{-[TDRenditionKeySpec graphicsFeatureSetClass](self, "graphicsFeatureSetClass")}];
  [into setAppearance:{-[TDRenditionKeySpec appearance](self, "appearance")}];
  [into setLocalization:{-[TDRenditionKeySpec localization](self, "localization")}];
  [into setGlyphSize:{-[TDRenditionKeySpec glyphSize](self, "glyphSize")}];
  glyphWeight = [(TDRenditionKeySpec *)self glyphWeight];

  [into setGlyphWeight:glyphWeight];
}

- (id)dataFromAttributes
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:6];
  state = [(TDRenditionKeySpec *)self state];
  if (state)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(state forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"state"}];
  }

  presentationState = [(TDRenditionKeySpec *)self presentationState];
  if (presentationState)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(presentationState forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"presentationState"}];
  }

  value = [(TDRenditionKeySpec *)self value];
  if (value)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(value forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"value"}];
  }

  v7 = [(TDRenditionKeySpec *)self size];
  if (v7)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v7 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"size"}];
  }

  direction = [(TDRenditionKeySpec *)self direction];
  if (direction)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(direction forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"direction"}];
  }

  part = [(TDRenditionKeySpec *)self part];
  if (part)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(part forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"part"}];
  }

  element = [(TDRenditionKeySpec *)self element];
  if (element)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(element forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"element"}];
  }

  layer = [(TDRenditionKeySpec *)self layer];
  if (layer)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(layer forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"layer"}];
  }

  idiom = [(TDRenditionKeySpec *)self idiom];
  if (idiom)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(idiom forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"idiom"}];
  }

  gamut = [(TDRenditionKeySpec *)self gamut];
  if (gamut)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(gamut forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"gamut"}];
  }

  target = [(TDRenditionKeySpec *)self target];
  if (target)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(target forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"target"}];
  }

  graphicsFeatureSetClass = [(TDRenditionKeySpec *)self graphicsFeatureSetClass];
  if (graphicsFeatureSetClass)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(graphicsFeatureSetClass forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"graphicsFeatureSetClass"}];
  }

  sizeClassHorizontal = [(TDRenditionKeySpec *)self sizeClassHorizontal];
  if (sizeClassHorizontal)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(sizeClassHorizontal forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"sizeClassHorizontal"}];
  }

  sizeClassVertical = [(TDRenditionKeySpec *)self sizeClassVertical];
  if (sizeClassVertical)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(sizeClassVertical forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"sizeClassVertical"}];
  }

  previousState = [(TDRenditionKeySpec *)self previousState];
  if (previousState)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(previousState forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"previousState"}];
  }

  previousValue = [(TDRenditionKeySpec *)self previousValue];
  if (previousValue)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(previousValue forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"previousValue"}];
  }

  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", -[TDRenditionKeySpec subtype](self, "subtype")), @"subtype"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", -[TDRenditionKeySpec nameIdentifier](self, "nameIdentifier")), @"nameIdentifier"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", -[TDRenditionKeySpec dimension1](self, "dimension1")), @"dimension1"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", -[TDRenditionKeySpec dimension2](self, "dimension2")), @"dimension2"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", -[TDRenditionKeySpec scaleFactor](self, "scaleFactor")), @"scaleFactor"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", -[TDRenditionKeySpec memoryClass](self, "memoryClass")), @"memoryClass"}];
  appearance = [(TDRenditionKeySpec *)self appearance];
  if (appearance)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(appearance forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"appearance"}];
  }

  localization = [(TDRenditionKeySpec *)self localization];
  if (localization)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(localization forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"localization"}];
  }

  v22 = MEMORY[0x277CCAC58];

  return [v22 dataWithPropertyList:v3 format:200 options:0 error:0];
}

- (void)setAttributesFromData:(id)data
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:0];
  managedObjectContext = [(TDRenditionKeySpec *)self managedObjectContext];
  v6 = [v4 objectForKey:@"state"];
  if (v6)
  {
    -[TDRenditionKeySpec setState:](self, "setState:", [managedObjectContext objectWithID:{objc_msgSend(objc_msgSend(managedObjectContext, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v6))}]);
  }

  v7 = [v4 objectForKey:@"previousState"];
  if (v7)
  {
    -[TDRenditionKeySpec setPreviousState:](self, "setPreviousState:", [managedObjectContext objectWithID:{objc_msgSend(objc_msgSend(managedObjectContext, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v7))}]);
  }

  v8 = [v4 objectForKey:@"presentationState"];
  if (v8)
  {
    -[TDRenditionKeySpec setPresentationState:](self, "setPresentationState:", [managedObjectContext objectWithID:{objc_msgSend(objc_msgSend(managedObjectContext, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v8))}]);
  }

  v9 = [v4 objectForKey:@"value"];
  if (v9)
  {
    -[TDRenditionKeySpec setValue:](self, "setValue:", [managedObjectContext objectWithID:{objc_msgSend(objc_msgSend(managedObjectContext, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v9))}]);
  }

  v10 = [v4 objectForKey:@"previousValue"];
  if (v10)
  {
    -[TDRenditionKeySpec setPreviousValue:](self, "setPreviousValue:", [managedObjectContext objectWithID:{objc_msgSend(objc_msgSend(managedObjectContext, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v10))}]);
  }

  v11 = [v4 objectForKey:@"size"];
  if (v11)
  {
    -[TDRenditionKeySpec setSize:](self, "setSize:", [managedObjectContext objectWithID:{objc_msgSend(objc_msgSend(managedObjectContext, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v11))}]);
  }

  v12 = [v4 objectForKey:@"direction"];
  if (v12)
  {
    -[TDRenditionKeySpec setDirection:](self, "setDirection:", [managedObjectContext objectWithID:{objc_msgSend(objc_msgSend(managedObjectContext, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v12))}]);
  }

  v13 = [v4 objectForKey:@"part"];
  if (v13)
  {
    -[TDRenditionKeySpec setPart:](self, "setPart:", [managedObjectContext objectWithID:{objc_msgSend(objc_msgSend(managedObjectContext, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v13))}]);
  }

  v14 = [v4 objectForKey:@"element"];
  if (v14)
  {
    -[TDRenditionKeySpec setElement:](self, "setElement:", [managedObjectContext objectWithID:{objc_msgSend(objc_msgSend(managedObjectContext, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v14))}]);
  }

  v15 = [v4 objectForKey:@"layer"];
  if (v15)
  {
    -[TDRenditionKeySpec setLayer:](self, "setLayer:", [managedObjectContext objectWithID:{objc_msgSend(objc_msgSend(managedObjectContext, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v15))}]);
  }

  v16 = [v4 objectForKey:@"idiom"];
  if (v16)
  {
    -[TDRenditionKeySpec setIdiom:](self, "setIdiom:", [managedObjectContext objectWithID:{objc_msgSend(objc_msgSend(managedObjectContext, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v16))}]);
  }

  v17 = [v4 objectForKey:@"gamut"];
  if (v17)
  {
    -[TDRenditionKeySpec setGamut:](self, "setGamut:", [managedObjectContext objectWithID:{objc_msgSend(objc_msgSend(managedObjectContext, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v17))}]);
  }

  v18 = [v4 objectForKey:@"target"];
  if (v18)
  {
    -[TDRenditionKeySpec setTarget:](self, "setTarget:", [managedObjectContext objectWithID:{objc_msgSend(objc_msgSend(managedObjectContext, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v18))}]);
  }

  v19 = [v4 objectForKey:@"graphicsFeatureSetClass"];
  if (v19)
  {
    -[TDRenditionKeySpec setGraphicsFeatureSetClass:](self, "setGraphicsFeatureSetClass:", [managedObjectContext objectWithID:{objc_msgSend(objc_msgSend(managedObjectContext, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v19))}]);
  }

  v20 = [v4 objectForKey:@"sizeClassHorizontal"];
  if (v20)
  {
    -[TDRenditionKeySpec setSizeClassHorizontal:](self, "setSizeClassHorizontal:", [managedObjectContext objectWithID:{objc_msgSend(objc_msgSend(managedObjectContext, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v20))}]);
  }

  v21 = [v4 objectForKey:@"sizeClassVertical"];
  if (v21)
  {
    -[TDRenditionKeySpec setSizeClassVertical:](self, "setSizeClassVertical:", [managedObjectContext objectWithID:{objc_msgSend(objc_msgSend(managedObjectContext, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v21))}]);
  }

  v22 = [v4 objectForKey:@"subtype"];
  if (v22)
  {
    -[TDRenditionKeySpec setSubtype:](self, "setSubtype:", [v22 intValue]);
  }

  v23 = [v4 objectForKey:@"dimension1"];
  if (v23)
  {
    -[TDRenditionKeySpec setDimension1:](self, "setDimension1:", [v23 intValue]);
  }

  v24 = [v4 objectForKey:@"nameIdentifier"];
  if (v24)
  {
    -[TDRenditionKeySpec setNameIdentifier:](self, "setNameIdentifier:", [v24 intValue]);
  }

  v25 = [v4 objectForKey:@"dimension2"];
  if (v25)
  {
    -[TDRenditionKeySpec setDimension2:](self, "setDimension2:", [v25 intValue]);
  }

  v26 = [v4 objectForKey:@"scaleFactor"];
  if (v26)
  {
    -[TDRenditionKeySpec setScaleFactor:](self, "setScaleFactor:", [v26 intValue]);
  }

  v27 = [v4 objectForKeyedSubscript:@"memoryClass"];
  if (v27)
  {
    [(TDRenditionKeySpec *)self setMemoryClass:v27];
  }

  v28 = [v4 objectForKey:@"appearance"];
  if (v28)
  {
    -[TDRenditionKeySpec setAppearance:](self, "setAppearance:", [managedObjectContext objectWithID:{objc_msgSend(objc_msgSend(managedObjectContext, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v28))}]);
  }

  v29 = [v4 objectForKey:@"localization"];
  if (v29)
  {
    v30 = [managedObjectContext objectWithID:{objc_msgSend(objc_msgSend(managedObjectContext, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v29))}];

    [(TDRenditionKeySpec *)self setLocalization:v30];
  }
}

- (id)copyDataFromAttributes
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v4 = [(TDRenditionKeySpec *)self valueForKey:@"dimension1"];
  if (v4)
  {
    [v3 setObject:v4 forKey:@"dimension1"];
  }

  v5 = [(TDRenditionKeySpec *)self valueForKey:@"nameIdentifier"];
  if (v5)
  {
    [v3 setObject:v5 forKey:@"nameIdentifier"];
  }

  v6 = [(TDRenditionKeySpec *)self valueForKey:@"dimension2"];
  if (v6)
  {
    [v3 setObject:v6 forKey:@"dimension2"];
  }

  v7 = [(TDRenditionKeySpec *)self valueForKey:@"scaleFactor"];
  if (v7)
  {
    [v3 setObject:v7 forKey:@"scaleFactor"];
  }

  v8 = [(TDRenditionKeySpec *)self valueForKey:@"subtype"];
  if (v8)
  {
    [v3 setObject:v8 forKey:@"subtype"];
  }

  v9 = [(TDRenditionKeySpec *)self valueForKey:@"direction"];
  if (v9)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v9, "identifier")), @"direction"}];
  }

  v10 = [(TDRenditionKeySpec *)self valueForKey:@"layer"];
  if (v10)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v10, "identifier")), @"layer"}];
  }

  v11 = [(TDRenditionKeySpec *)self valueForKey:@"size"];
  if (v11)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v11, "identifier")), @"size"}];
  }

  v12 = [(TDRenditionKeySpec *)self valueForKey:@"state"];
  if (v12)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v12, "identifier")), @"state"}];
  }

  v13 = [(TDRenditionKeySpec *)self valueForKey:@"previousState"];
  if (v13)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v13, "identifier")), @"previousState"}];
  }

  v14 = [(TDRenditionKeySpec *)self valueForKey:@"presentationState"];
  if (v14)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v14, "identifier")), @"presentationState"}];
  }

  v15 = [(TDRenditionKeySpec *)self valueForKey:@"idiom"];
  if (v15)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v15, "identifier")), @"idiom"}];
  }

  v16 = [(TDRenditionKeySpec *)self valueForKey:@"gamut"];
  if (v16)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v16, "identifier")), @"gamut"}];
  }

  v17 = [(TDRenditionKeySpec *)self valueForKey:@"graphicsFeatureSetClass"];
  if (v17)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v17, "identifier")), @"graphicsFeatureSetClass"}];
  }

  v18 = [(TDRenditionKeySpec *)self valueForKey:@"sizeClassHorizontal"];
  if (v18)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v18, "identifier")), @"sizeClassHorizontal"}];
  }

  v19 = [(TDRenditionKeySpec *)self valueForKey:@"sizeClassVertical"];
  if (v19)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v19, "identifier")), @"sizeClassVertical"}];
  }

  v20 = [(TDRenditionKeySpec *)self valueForKey:@"value"];
  if (v20)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v20, "identifier")), @"value"}];
  }

  v21 = [(TDRenditionKeySpec *)self valueForKey:@"previousValue"];
  if (v21)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v21, "identifier")), @"previousValue"}];
  }

  v22 = [(TDRenditionKeySpec *)self valueForKey:@"element"];
  if (v22)
  {
    [v3 setObject:objc_msgSend(v22 forKey:{"copyDataFromAttributes"), @"element"}];
  }

  v23 = [(TDRenditionKeySpec *)self valueForKey:@"part"];
  if (v23)
  {
    [v3 setObject:objc_msgSend(v23 forKey:{"copyDataFromAttributes"), @"part"}];
  }

  v24 = [(TDRenditionKeySpec *)self valueForKey:@"appearance"];
  if (v24)
  {
    [v3 setObject:v24 forKey:@"appearance"];
  }

  v25 = [(TDRenditionKeySpec *)self valueForKey:@"localization"];
  if (v25)
  {
    [v3 setObject:v25 forKey:@"localization"];
  }

  v26 = [MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:200 options:0 error:0];

  return [v26 copy];
}

- (void)setAttributesFromCopyData:(id)data
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:0];
  v5 = [v4 objectForKey:@"nameIdentifier"];
  if (v5)
  {
    -[TDRenditionKeySpec setNameIdentifier:](self, "setNameIdentifier:", [v5 intValue]);
  }

  v6 = [v4 objectForKey:@"dimension1"];
  if (v6)
  {
    -[TDRenditionKeySpec setDimension1:](self, "setDimension1:", [v6 intValue]);
  }

  v7 = [v4 objectForKey:@"dimension2"];
  if (v7)
  {
    -[TDRenditionKeySpec setDimension2:](self, "setDimension2:", [v7 intValue]);
  }

  v8 = [v4 objectForKey:@"scaleFactor"];
  if (v8)
  {
    -[TDRenditionKeySpec setScaleFactor:](self, "setScaleFactor:", [v8 intValue]);
  }

  v9 = [v4 objectForKey:@"subtype"];
  if (v9)
  {
    -[TDRenditionKeySpec setSubtype:](self, "setSubtype:", [v9 intValue]);
  }

  v10 = [v4 objectForKeyedSubscript:@"memoryClass"];
  if (v10)
  {

    [(TDRenditionKeySpec *)self setMemoryClass:v10];
  }
}

@end