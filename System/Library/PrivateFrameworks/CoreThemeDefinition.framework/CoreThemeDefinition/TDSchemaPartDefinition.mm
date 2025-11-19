@interface TDSchemaPartDefinition
- (CUIImage)previewImage;
- (NSArray)renditionGroups;
- (NSArray)renditions;
- (const)cuiPartDefinition;
- (id)_schema;
- (id)displayName;
- (id)validStatesWithDocument:(id)a3;
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
  v3 = [(TDSchemaPartDefinition *)self _schema];
  v4 = [(TDSchemaPartDefinition *)self cuiPartDefinition];
  [(TDSchemaPartDefinition *)self element];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 schemaRenditionsForPartDefinition:v4];
  }

  else
  {
    [(TDSchemaPartDefinition *)self element];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 schemaEffectRenditionsForPartDefinition:v4];
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

      v5 = [v3 schemaMaterialRenditionsForPartDefinition:v4];
    }
  }

  [(TDSchemaPartDefinition *)self setRenditions:v5];
  -[TDSchemaPartDefinition setRenditionGroups:](self, "setRenditionGroups:", [MEMORY[0x277D026F8] renditionGroupsForRenditions:-[TDSchemaPartDefinition renditions](self part:{"renditions"), v4}]);
  [(TDSchemaPartDefinition *)self setPartFeatures:v4->var4];

  [(TDSchemaPartDefinition *)self setPreviewImage:0];
}

- (id)validStatesWithDocument:(id)a3
{
  if (!a3)
  {
    [(TDSchemaPartDefinition *)a2 validStatesWithDocument:?];
  }

  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(TDSchemaPartDefinition *)self partFeatures];
  [v5 addObject:{objc_msgSend(a3, "stateWithIdentifier:", 0)}];
  if ((v6 & 0x1000) == 0)
  {
    if ((v6 & 0x100) != 0)
    {
      [v5 addObject:{objc_msgSend(a3, "stateWithIdentifier:", 1)}];
      if ((v6 & 0x800) != 0)
      {
LABEL_6:
        if ((v6 & 0x80000) != 0)
        {
LABEL_8:
          [v5 addObject:{objc_msgSend(a3, "stateWithIdentifier:", 4)}];
          goto LABEL_9;
        }

LABEL_7:
        [v5 addObject:{objc_msgSend(a3, "stateWithIdentifier:", 4)}];
        goto LABEL_8;
      }
    }

    else if ((v6 & 0x800) != 0)
    {
      goto LABEL_6;
    }

    [v5 addObject:{objc_msgSend(a3, "stateWithIdentifier:", 2)}];
    if ((v6 & 0x80000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  v7 = MEMORY[0x277CBEA60];

  return [v7 arrayWithArray:v5];
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
  v4 = [(TDSchemaPartDefinition *)self name];
  v5 = [(TDSchemaPartDefinition *)self _schema];
  [(TDSchemaPartDefinition *)self element];
  v6 = [objc_opt_class() elementDefinitionWithName:v3 withSchema:v5];

  return [v5 partDefinitionWithName:v4 forElementDefinition:v6];
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