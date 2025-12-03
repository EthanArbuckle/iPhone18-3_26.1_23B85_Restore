@interface MKFCKTrigger
- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
@end

@implementation MKFCKTrigger

- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  modelCopy = model;
  contextCopy = context;
  v9 = [(MKFCKModel *)self copyPropertiesFromLocalModel:modelCopy context:contextCopy];
  if (self)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = contextCopy;
    v12 = modelCopy;
    entity = [v12 entity];
    relationshipsByName = [entity relationshipsByName];
    v15 = [relationshipsByName objectForKeyedSubscript:@"actionSets_"];

    v16 = [(MKFCKModel *)self relationshipForLocalName:@"actionSets_" localModel:v12];
    [(MKFCKHomeObject *)self _exportSiblingRelationshipsFromLocalModel:v12 localRelationship:v15 cloudRelationship:v16 context:v11];
  }

  return v10;
}

- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  modelCopy = model;
  contextCopy = context;
  v9 = [(MKFCKModel *)self copyPropertiesIntoLocalModel:modelCopy context:contextCopy];
  if (self)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = contextCopy;
    v12 = modelCopy;
    entity = [v12 entity];
    relationshipsByName = [entity relationshipsByName];
    v15 = [relationshipsByName objectForKeyedSubscript:@"actionSets_"];

    v16 = [(MKFCKModel *)self relationshipForLocalName:@"actionSets_" localModel:v12];
    [(MKFCKHomeObject *)self _importSiblingRelationshipsIntoLocalModel:v12 localRelationship:v15 cloudRelationship:v16 context:v11];
  }

  return v10;
}

@end