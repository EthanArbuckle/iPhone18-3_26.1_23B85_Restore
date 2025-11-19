@interface TDRenditionKeySpec
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
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
- (void)copyAttributesInto:(id)a3;
- (void)dealloc;
- (void)getKey:(_renditionkeytoken *)a3;
- (void)setAttributesFromCopyData:(id)a3;
- (void)setAttributesFromData:(id)a3;
- (void)setAttributesFromRenditionKey:(const _renditionkeytoken *)a3 withDocument:(id)a4;
- (void)setDimension1:(unsigned int)a3;
- (void)setDimension2:(unsigned int)a3;
- (void)setMemoryClass:(unsigned int)a3;
- (void)setNameIdentifier:(unsigned int)a3;
- (void)setScaleFactor:(unsigned int)a3;
- (void)setScaleFactorString:(id)a3;
- (void)setSubtype:(unsigned int)a3;
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

- (void)setDimension1:(unsigned int)a3
{
  [(TDRenditionKeySpec *)self willChangeValueForKey:@"dimension1"];
  self->_dimension1 = a3;

  [(TDRenditionKeySpec *)self didChangeValueForKey:@"dimension1"];
}

- (unsigned)dimension1
{
  [(TDRenditionKeySpec *)self willAccessValueForKey:@"dimension1"];
  dimension1 = self->_dimension1;
  [(TDRenditionKeySpec *)self didAccessValueForKey:@"dimension1"];
  return dimension1;
}

- (void)setDimension2:(unsigned int)a3
{
  [(TDRenditionKeySpec *)self willChangeValueForKey:@"dimension2"];
  self->_dimension2 = a3;

  [(TDRenditionKeySpec *)self didChangeValueForKey:@"dimension2"];
}

- (unsigned)dimension2
{
  [(TDRenditionKeySpec *)self willAccessValueForKey:@"dimension2"];
  dimension2 = self->_dimension2;
  [(TDRenditionKeySpec *)self didAccessValueForKey:@"dimension2"];
  return dimension2;
}

- (void)setScaleFactor:(unsigned int)a3
{
  [(TDRenditionKeySpec *)self willChangeValueForKey:@"scaleFactor"];
  self->_scaleFactor = a3;

  [(TDRenditionKeySpec *)self didChangeValueForKey:@"scaleFactor"];
}

- (unsigned)scaleFactor
{
  [(TDRenditionKeySpec *)self willAccessValueForKey:@"scaleFactor"];
  scaleFactor = self->_scaleFactor;
  [(TDRenditionKeySpec *)self didAccessValueForKey:@"scaleFactor"];
  return scaleFactor;
}

- (void)setSubtype:(unsigned int)a3
{
  [(TDRenditionKeySpec *)self willAccessValueForKey:@"subtype"];
  self->_subtype = a3;

  [(TDRenditionKeySpec *)self didAccessValueForKey:@"subtype"];
}

- (unsigned)subtype
{
  [(TDRenditionKeySpec *)self willAccessValueForKey:@"subtype"];
  subtype = self->_subtype;
  [(TDRenditionKeySpec *)self didAccessValueForKey:@"subtype"];
  return subtype;
}

- (void)setNameIdentifier:(unsigned int)a3
{
  [(TDRenditionKeySpec *)self willAccessValueForKey:@"nameIdentifier"];
  self->_nameIdentifier = a3;

  [(TDRenditionKeySpec *)self didAccessValueForKey:@"nameIdentifier"];
}

- (unsigned)nameIdentifier
{
  [(TDRenditionKeySpec *)self willAccessValueForKey:@"nameIdentifier"];
  nameIdentifier = self->_nameIdentifier;
  [(TDRenditionKeySpec *)self didAccessValueForKey:@"nameIdentifier"];
  return nameIdentifier;
}

- (void)setMemoryClass:(unsigned int)a3
{
  [(TDRenditionKeySpec *)self willAccessValueForKey:@"memoryClass"];
  self->_memoryClass = a3;

  [(TDRenditionKeySpec *)self didAccessValueForKey:@"memoryClass"];
}

- (unsigned)memoryClass
{
  [(TDRenditionKeySpec *)self willAccessValueForKey:@"memoryClass"];
  memoryClass = self->_memoryClass;
  [(TDRenditionKeySpec *)self willAccessValueForKey:@"memoryClass"];
  return memoryClass;
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___TDRenditionKeySpec;
  v4 = objc_msgSendSuper2(&v6, sel_keyPathsForValuesAffectingValueForKey_);
  if ([a3 isEqualToString:@"scaleFactorString"])
  {
    return [v4 setByAddingObjectsFromSet:{objc_msgSend(MEMORY[0x277CBEB98], "setWithObjects:", @"scaleFactor", 0)}];
  }

  return v4;
}

- (void)setScaleFactorString:(id)a3
{
  v4 = [a3 intValue];

  [(TDRenditionKeySpec *)self setScaleFactor:v4];
}

- (void)setAttributesFromRenditionKey:(const _renditionkeytoken *)a3 withDocument:(id)a4
{
  identifier = a3->identifier;
  if (a3->identifier)
  {
    v7 = a3 + 1;
    do
    {
      value = v7[-1].value;
      switch(identifier)
      {
        case 1:
          -[TDRenditionKeySpec setElement:](self, "setElement:", [a4 elementWithIdentifier:value]);
          break;
        case 2:
          -[TDRenditionKeySpec setPart:](self, "setPart:", [a4 partWithIdentifier:value]);
          break;
        case 3:
          -[TDRenditionKeySpec setSize:](self, "setSize:", [a4 sizeWithIdentifier:value]);
          break;
        case 4:
          -[TDRenditionKeySpec setDirection:](self, "setDirection:", [a4 directionWithIdentifier:value]);
          break;
        case 6:
          -[TDRenditionKeySpec setValue:](self, "setValue:", [a4 valueWithIdentifier:value]);
          break;
        case 7:
          -[TDRenditionKeySpec setAppearance:](self, "setAppearance:", [a4 appearanceWithIdentifier:value]);
          break;
        case 8:
          [(TDRenditionKeySpec *)self setDimension1:value];
          break;
        case 9:
          [(TDRenditionKeySpec *)self setDimension2:value];
          break;
        case 10:
          -[TDRenditionKeySpec setState:](self, "setState:", [a4 stateWithIdentifier:value]);
          break;
        case 11:
          -[TDRenditionKeySpec setLayer:](self, "setLayer:", [a4 drawingLayerWithIdentifier:value]);
          break;
        case 12:
          [(TDRenditionKeySpec *)self setScaleFactor:value];
          break;
        case 13:
          -[TDRenditionKeySpec setLocalization:](self, "setLocalization:", [a4 localizationWithIdentifier:value]);
          break;
        case 14:
          -[TDRenditionKeySpec setPresentationState:](self, "setPresentationState:", [a4 presentationStateWithIdentifier:value]);
          break;
        case 15:
          -[TDRenditionKeySpec setIdiom:](self, "setIdiom:", [a4 idiomWithIdentifier:value]);
          break;
        case 16:
          [(TDRenditionKeySpec *)self setSubtype:value];
          break;
        case 17:
          [(TDRenditionKeySpec *)self setNameIdentifier:value];
          break;
        case 18:
          -[TDRenditionKeySpec setPreviousValue:](self, "setPreviousValue:", [a4 valueWithIdentifier:value]);
          break;
        case 19:
          -[TDRenditionKeySpec setPreviousState:](self, "setPreviousState:", [a4 stateWithIdentifier:value]);
          break;
        case 20:
          -[TDRenditionKeySpec setSizeClassHorizontal:](self, "setSizeClassHorizontal:", [a4 sizeClassWithIdentifier:value]);
          break;
        case 21:
          -[TDRenditionKeySpec setSizeClassVertical:](self, "setSizeClassVertical:", [a4 sizeClassWithIdentifier:value]);
          break;
        case 22:
          [(TDRenditionKeySpec *)self setMemoryClass:value];
          break;
        case 23:
          -[TDRenditionKeySpec setGraphicsFeatureSetClass:](self, "setGraphicsFeatureSetClass:", [a4 graphicsFeatureSetClassWithIdentifier:value]);
          break;
        case 24:
          -[TDRenditionKeySpec setGamut:](self, "setGamut:", [a4 displayGamutWithIdentifier:value]);
          break;
        case 25:
          -[TDRenditionKeySpec setTarget:](self, "setTarget:", [a4 deploymentTargetWithIdentifier:value]);
          break;
        case 26:
          -[TDRenditionKeySpec setGlyphSize:](self, "setGlyphSize:", [a4 glyphSizeWithIdentifier:value]);
          break;
        case 27:
          -[TDRenditionKeySpec setGlyphWeight:](self, "setGlyphWeight:", [a4 glyphWeightWithIdentifier:value]);
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

- (void)getKey:(_renditionkeytoken *)a3
{
  *a3 = 0;
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
    v4 = [(TDRenditionKeySpec *)self attributeCount];
    if (v4 < 22)
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
      scratchKey = malloc_type_malloc(4 * v4 + 4, 0x100004052888210uLL);
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
    v52 = [(TDRenditionKeySpec *)self nameIdentifier];
    v50 = [(TDRenditionKeySpec *)self dimension1];
    v48 = [(TDRenditionKeySpec *)self dimension2];
    v46 = [-[TDRenditionKeySpec state](self "state")];
    v44 = [-[TDRenditionKeySpec presentationState](self "presentationState")];
    v42 = [-[TDRenditionKeySpec previousState](self "previousState")];
    v13 = [-[TDRenditionKeySpec previousValue](self "previousValue")];
    v14 = [-[TDRenditionKeySpec layer](self "layer")];
    v15 = [(TDRenditionKeySpec *)self scaleFactor];
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
    v33 = v15;
    v34 = v16;
    v31 = v13;
    v32 = v14;
    v29 = v44;
    v30 = v42;
    v28 = v46;
    v27 = v48;
    v26 = v50;
    v25 = v52;
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
    v55 = [(TDRenditionKeySpec *)self nameIdentifier];
    v53 = [(TDRenditionKeySpec *)self dimension1];
    v51 = [-[TDRenditionKeySpec state](self "state")];
    v49 = [(TDRenditionKeySpec *)self scaleFactor];
    v47 = [-[TDRenditionKeySpec idiom](self "idiom")];
    v45 = [(TDRenditionKeySpec *)self subtype];
    v43 = [-[TDRenditionKeySpec gamut](self "gamut")];
    v41 = [-[TDRenditionKeySpec target](self "target")];
    v4 = [-[TDRenditionKeySpec sizeClassHorizontal](self "sizeClassHorizontal")];
    v5 = [-[TDRenditionKeySpec sizeClassVertical](self "sizeClassVertical")];
    v6 = [-[TDRenditionKeySpec graphicsFeatureSetClass](self "graphicsFeatureSetClass")];
    v7 = [(TDRenditionKeySpec *)self memoryClass];
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
    v34 = v7;
    v31 = v4;
    v32 = v5;
    v29 = v43;
    v30 = v41;
    v28 = v45;
    v27 = v47;
    v26 = v49;
    v25 = v51;
    v24 = v53;
    v23 = v55;
    v22 = v57;
    v12 = @"(E)Key\n\telement:   \t%@\n\tpart:      \t%@\n\tvalue:     \t%@\n\tidentifier:\t%u\n\tdimension1:\t%u\n\tstate:     \t%@\n\tscale:     \t%u\n\tidiom:   \t%@\n\tsubtype:      \t%u\n\tgamut:   \t%@\n\ttarget:   \t%@\n\tsizeClassHorizontal:   \t%@\n\tsizeClassVertical:   \t%@\n\tgraphicsFeatureSetClass:      \t%@\n\tmemoryClass:      \t%u\n\ttarget:    \t%@\n\tappearance:      \t%@\n\tlocalization:      \t%@\n\tglyphWeight:\t%@\n\ttglypSize: \t%@\n\tdeployment:   \t%@";
    return [v61 stringWithFormat:v12, v60, v59, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40];
  }

  return 0;
}

- (void)copyAttributesInto:(id)a3
{
  [a3 setState:{-[TDRenditionKeySpec state](self, "state")}];
  [a3 setPresentationState:{-[TDRenditionKeySpec presentationState](self, "presentationState")}];
  [a3 setValue:{-[TDRenditionKeySpec value](self, "value")}];
  [a3 setSize:{-[TDRenditionKeySpec size](self, "size")}];
  [a3 setDirection:{-[TDRenditionKeySpec direction](self, "direction")}];
  [a3 setPart:{-[TDRenditionKeySpec part](self, "part")}];
  [a3 setElement:{-[TDRenditionKeySpec element](self, "element")}];
  [a3 setLayer:{-[TDRenditionKeySpec layer](self, "layer")}];
  [a3 setPreviousState:{-[TDRenditionKeySpec previousState](self, "previousState")}];
  [a3 setPreviousValue:{-[TDRenditionKeySpec previousValue](self, "previousValue")}];
  [a3 setNameIdentifier:{-[TDRenditionKeySpec nameIdentifier](self, "nameIdentifier")}];
  [a3 setDimension1:{-[TDRenditionKeySpec dimension1](self, "dimension1")}];
  [a3 setDimension2:{-[TDRenditionKeySpec dimension2](self, "dimension2")}];
  [a3 setScaleFactor:{-[TDRenditionKeySpec scaleFactor](self, "scaleFactor")}];
  [a3 setIdiom:{-[TDRenditionKeySpec idiom](self, "idiom")}];
  [a3 setSubtype:{-[TDRenditionKeySpec subtype](self, "subtype")}];
  [a3 setGamut:{-[TDRenditionKeySpec gamut](self, "gamut")}];
  [a3 setTarget:{-[TDRenditionKeySpec target](self, "target")}];
  [a3 setSizeClassHorizontal:{-[TDRenditionKeySpec sizeClassHorizontal](self, "sizeClassHorizontal")}];
  [a3 setSizeClassVertical:{-[TDRenditionKeySpec sizeClassVertical](self, "sizeClassVertical")}];
  [a3 setMemoryClass:{-[TDRenditionKeySpec memoryClass](self, "memoryClass")}];
  [a3 setGraphicsFeatureSetClass:{-[TDRenditionKeySpec graphicsFeatureSetClass](self, "graphicsFeatureSetClass")}];
  [a3 setAppearance:{-[TDRenditionKeySpec appearance](self, "appearance")}];
  [a3 setLocalization:{-[TDRenditionKeySpec localization](self, "localization")}];
  [a3 setGlyphSize:{-[TDRenditionKeySpec glyphSize](self, "glyphSize")}];
  v5 = [(TDRenditionKeySpec *)self glyphWeight];

  [a3 setGlyphWeight:v5];
}

- (id)dataFromAttributes
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:6];
  v4 = [(TDRenditionKeySpec *)self state];
  if (v4)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v4 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"state"}];
  }

  v5 = [(TDRenditionKeySpec *)self presentationState];
  if (v5)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v5 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"presentationState"}];
  }

  v6 = [(TDRenditionKeySpec *)self value];
  if (v6)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v6 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"value"}];
  }

  v7 = [(TDRenditionKeySpec *)self size];
  if (v7)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v7 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"size"}];
  }

  v8 = [(TDRenditionKeySpec *)self direction];
  if (v8)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v8 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"direction"}];
  }

  v9 = [(TDRenditionKeySpec *)self part];
  if (v9)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v9 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"part"}];
  }

  v10 = [(TDRenditionKeySpec *)self element];
  if (v10)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v10 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"element"}];
  }

  v11 = [(TDRenditionKeySpec *)self layer];
  if (v11)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v11 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"layer"}];
  }

  v12 = [(TDRenditionKeySpec *)self idiom];
  if (v12)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v12 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"idiom"}];
  }

  v13 = [(TDRenditionKeySpec *)self gamut];
  if (v13)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v13 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"gamut"}];
  }

  v14 = [(TDRenditionKeySpec *)self target];
  if (v14)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v14 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"target"}];
  }

  v15 = [(TDRenditionKeySpec *)self graphicsFeatureSetClass];
  if (v15)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v15 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"graphicsFeatureSetClass"}];
  }

  v16 = [(TDRenditionKeySpec *)self sizeClassHorizontal];
  if (v16)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v16 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"sizeClassHorizontal"}];
  }

  v17 = [(TDRenditionKeySpec *)self sizeClassVertical];
  if (v17)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v17 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"sizeClassVertical"}];
  }

  v18 = [(TDRenditionKeySpec *)self previousState];
  if (v18)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v18 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"previousState"}];
  }

  v19 = [(TDRenditionKeySpec *)self previousValue];
  if (v19)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v19 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"previousValue"}];
  }

  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", -[TDRenditionKeySpec subtype](self, "subtype")), @"subtype"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", -[TDRenditionKeySpec nameIdentifier](self, "nameIdentifier")), @"nameIdentifier"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", -[TDRenditionKeySpec dimension1](self, "dimension1")), @"dimension1"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", -[TDRenditionKeySpec dimension2](self, "dimension2")), @"dimension2"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", -[TDRenditionKeySpec scaleFactor](self, "scaleFactor")), @"scaleFactor"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInt:", -[TDRenditionKeySpec memoryClass](self, "memoryClass")), @"memoryClass"}];
  v20 = [(TDRenditionKeySpec *)self appearance];
  if (v20)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v20 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"appearance"}];
  }

  v21 = [(TDRenditionKeySpec *)self localization];
  if (v21)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v21 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"localization"}];
  }

  v22 = MEMORY[0x277CCAC58];

  return [v22 dataWithPropertyList:v3 format:200 options:0 error:0];
}

- (void)setAttributesFromData:(id)a3
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:0];
  v5 = [(TDRenditionKeySpec *)self managedObjectContext];
  v6 = [v4 objectForKey:@"state"];
  if (v6)
  {
    -[TDRenditionKeySpec setState:](self, "setState:", [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v6))}]);
  }

  v7 = [v4 objectForKey:@"previousState"];
  if (v7)
  {
    -[TDRenditionKeySpec setPreviousState:](self, "setPreviousState:", [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v7))}]);
  }

  v8 = [v4 objectForKey:@"presentationState"];
  if (v8)
  {
    -[TDRenditionKeySpec setPresentationState:](self, "setPresentationState:", [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v8))}]);
  }

  v9 = [v4 objectForKey:@"value"];
  if (v9)
  {
    -[TDRenditionKeySpec setValue:](self, "setValue:", [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v9))}]);
  }

  v10 = [v4 objectForKey:@"previousValue"];
  if (v10)
  {
    -[TDRenditionKeySpec setPreviousValue:](self, "setPreviousValue:", [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v10))}]);
  }

  v11 = [v4 objectForKey:@"size"];
  if (v11)
  {
    -[TDRenditionKeySpec setSize:](self, "setSize:", [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v11))}]);
  }

  v12 = [v4 objectForKey:@"direction"];
  if (v12)
  {
    -[TDRenditionKeySpec setDirection:](self, "setDirection:", [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v12))}]);
  }

  v13 = [v4 objectForKey:@"part"];
  if (v13)
  {
    -[TDRenditionKeySpec setPart:](self, "setPart:", [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v13))}]);
  }

  v14 = [v4 objectForKey:@"element"];
  if (v14)
  {
    -[TDRenditionKeySpec setElement:](self, "setElement:", [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v14))}]);
  }

  v15 = [v4 objectForKey:@"layer"];
  if (v15)
  {
    -[TDRenditionKeySpec setLayer:](self, "setLayer:", [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v15))}]);
  }

  v16 = [v4 objectForKey:@"idiom"];
  if (v16)
  {
    -[TDRenditionKeySpec setIdiom:](self, "setIdiom:", [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v16))}]);
  }

  v17 = [v4 objectForKey:@"gamut"];
  if (v17)
  {
    -[TDRenditionKeySpec setGamut:](self, "setGamut:", [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v17))}]);
  }

  v18 = [v4 objectForKey:@"target"];
  if (v18)
  {
    -[TDRenditionKeySpec setTarget:](self, "setTarget:", [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v18))}]);
  }

  v19 = [v4 objectForKey:@"graphicsFeatureSetClass"];
  if (v19)
  {
    -[TDRenditionKeySpec setGraphicsFeatureSetClass:](self, "setGraphicsFeatureSetClass:", [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v19))}]);
  }

  v20 = [v4 objectForKey:@"sizeClassHorizontal"];
  if (v20)
  {
    -[TDRenditionKeySpec setSizeClassHorizontal:](self, "setSizeClassHorizontal:", [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v20))}]);
  }

  v21 = [v4 objectForKey:@"sizeClassVertical"];
  if (v21)
  {
    -[TDRenditionKeySpec setSizeClassVertical:](self, "setSizeClassVertical:", [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v21))}]);
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
    -[TDRenditionKeySpec setAppearance:](self, "setAppearance:", [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v28))}]);
  }

  v29 = [v4 objectForKey:@"localization"];
  if (v29)
  {
    v30 = [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v29))}];

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

- (void)setAttributesFromCopyData:(id)a3
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:0];
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