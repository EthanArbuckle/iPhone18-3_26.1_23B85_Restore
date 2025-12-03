@interface TDSchemaPartDefinition
- (CUIImage)previewImage;
- (NSArray)renditionGroups;
- (NSArray)renditions;
- (const)cuiPartDefinition;
- (id)_schema;
- (id)displayName;
- (id)validStatesWithDocument:(id)document;
- (unint64_t)partFeatures;
- (void)dealloc;
- (void)didTurnIntoFault;
- (void)updateDerivedRenditionData;
@end

@implementation TDSchemaPartDefinition

- (void)dealloc
{
  [(TDSchemaPartDefinition *)self setPreviewImage:0];
  [(TDSchemaPartDefinition *)self setRenditionGroups:0];
  [(TDSchemaPartDefinition *)self setRenditions:0];
  v3.receiver = self;
  v3.super_class = TDSchemaPartDefinition;
  [(TDSchemaPartDefinition *)&v3 dealloc];
}

- (id)_schema
{
  v2 = [CoreThemeDocument targetPlatformForMOC:[(TDSchemaPartDefinition *)self managedObjectContext]];
  v3 = MEMORY[0x277D026E0];

  return [v3 schemaForPlatform:v2];
}

- (void)updateDerivedRenditionData
{
  _schema = [(TDSchemaPartDefinition *)self _schema];
  cuiPartDefinition = [(TDSchemaPartDefinition *)self cuiPartDefinition];
  [(TDSchemaPartDefinition *)self element];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [_schema schemaRenditionsForPartDefinition:cuiPartDefinition];
  }

  else
  {
    [(TDSchemaPartDefinition *)self element];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [_schema schemaEffectRenditionsForPartDefinition:cuiPartDefinition];
    }

    else
    {
      [(TDSchemaPartDefinition *)self element];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(TDSchemaPartDefinition *)self element];
        v6 = objc_opt_class();
        NSLog(&cfstr_EncounteredUns.isa, v6);
        return;
      }

      v5 = [_schema schemaMaterialRenditionsForPartDefinition:cuiPartDefinition];
    }
  }

  [(TDSchemaPartDefinition *)self setRenditions:v5];
  -[TDSchemaPartDefinition setRenditionGroups:](self, "setRenditionGroups:", [MEMORY[0x277D026F8] renditionGroupsForRenditions:-[TDSchemaPartDefinition renditions](self part:{"renditions"), cuiPartDefinition}]);
  [(TDSchemaPartDefinition *)self setPartFeatures:cuiPartDefinition->var4];

  [(TDSchemaPartDefinition *)self setPreviewImage:0];
}

- (id)validStatesWithDocument:(id)document
{
  if (!document)
  {
    [(TDSchemaPartDefinition *)a2 validStatesWithDocument:?];
  }

  array = [MEMORY[0x277CBEB18] array];
  partFeatures = [(TDSchemaPartDefinition *)self partFeatures];
  [array addObject:{objc_msgSend(document, "stateWithIdentifier:", 0)}];
  if ((partFeatures & 0x1000) == 0)
  {
    if ((partFeatures & 0x100) != 0)
    {
      [array addObject:{objc_msgSend(document, "stateWithIdentifier:", 1)}];
      if ((partFeatures & 0x800) != 0)
      {
LABEL_6:
        if ((partFeatures & 0x80000) != 0)
        {
LABEL_8:
          [array addObject:{objc_msgSend(document, "stateWithIdentifier:", 4)}];
          goto LABEL_9;
        }

LABEL_7:
        [array addObject:{objc_msgSend(document, "stateWithIdentifier:", 4)}];
        goto LABEL_8;
      }
    }

    else if ((partFeatures & 0x800) != 0)
    {
      goto LABEL_6;
    }

    [array addObject:{objc_msgSend(document, "stateWithIdentifier:", 2)}];
    if ((partFeatures & 0x80000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  v7 = MEMORY[0x277CBEA60];

  return [v7 arrayWithArray:array];
}

- (id)displayName
{
  v2 = [(TDSchemaPartDefinition *)self cuiPartDefinition][8];
  v3 = MEMORY[0x277CCACA8];

  return [v3 stringWithUTF8String:v2];
}

- (const)cuiPartDefinition
{
  v3 = [-[TDSchemaPartDefinition element](self "element")];
  name = [(TDSchemaPartDefinition *)self name];
  _schema = [(TDSchemaPartDefinition *)self _schema];
  [(TDSchemaPartDefinition *)self element];
  v6 = [objc_opt_class() elementDefinitionWithName:v3 withSchema:_schema];

  return [_schema partDefinitionWithName:name forElementDefinition:v6];
}

- (CUIImage)previewImage
{
  result = self->previewImage;
  if (!result)
  {
    [(TDSchemaPartDefinition *)self updateDerivedRenditionData];
    return self->previewImage;
  }

  return result;
}

- (NSArray)renditions
{
  result = self->renditions;
  if (!result)
  {
    [(TDSchemaPartDefinition *)self updateDerivedRenditionData];
    return self->renditions;
  }

  return result;
}

- (NSArray)renditionGroups
{
  result = self->renditionGroups;
  if (!result)
  {
    [(TDSchemaPartDefinition *)self updateDerivedRenditionData];
    return self->renditionGroups;
  }

  return result;
}

- (unint64_t)partFeatures
{
  result = self->partFeatures;
  if (!result)
  {
    [(TDSchemaPartDefinition *)self updateDerivedRenditionData];
    return self->partFeatures;
  }

  return result;
}

- (void)didTurnIntoFault
{
  v3.receiver = self;
  v3.super_class = TDSchemaPartDefinition;
  [(TDSchemaPartDefinition *)&v3 didTurnIntoFault];
  [(TDSchemaPartDefinition *)self setPreviewImage:0];
  [(TDSchemaPartDefinition *)self setRenditions:0];
  [(TDSchemaPartDefinition *)self setRenditionGroups:0];
  [(TDSchemaPartDefinition *)self setPartFeatures:0];
}

@end