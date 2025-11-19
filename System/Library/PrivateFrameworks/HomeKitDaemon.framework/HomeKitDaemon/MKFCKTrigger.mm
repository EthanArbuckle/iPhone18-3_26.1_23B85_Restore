@interface MKFCKTrigger
- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
@end

@implementation MKFCKTrigger

- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(MKFCKModel *)self copyPropertiesFromLocalModel:v7 context:v8];
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
    v11 = v8;
    v12 = v7;
    v13 = [v12 entity];
    v14 = [v13 relationshipsByName];
    v15 = [v14 objectForKeyedSubscript:@"actionSets_"];

    v16 = [(MKFCKModel *)self relationshipForLocalName:@"actionSets_" localModel:v12];
    [(MKFCKHomeObject *)self _exportSiblingRelationshipsFromLocalModel:v12 localRelationship:v15 cloudRelationship:v16 context:v11];
  }

  return v10;
}

- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(MKFCKModel *)self copyPropertiesIntoLocalModel:v7 context:v8];
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
    v11 = v8;
    v12 = v7;
    v13 = [v12 entity];
    v14 = [v13 relationshipsByName];
    v15 = [v14 objectForKeyedSubscript:@"actionSets_"];

    v16 = [(MKFCKModel *)self relationshipForLocalName:@"actionSets_" localModel:v12];
    [(MKFCKHomeObject *)self _importSiblingRelationshipsIntoLocalModel:v12 localRelationship:v15 cloudRelationship:v16 context:v11];
  }

  return v10;
}

@end