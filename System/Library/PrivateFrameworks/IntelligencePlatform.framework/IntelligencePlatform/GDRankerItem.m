@interface GDRankerItem
- (GDRankerItem)initWithCoder:(id)a3;
- (GDRankerItem)initWithEntityID:(id)a3 sourceID:(id)a4 entityClass:(id)a5 features:(id)a6 score:(double)a7 nameScore:(double)a8 contextualScore:(double)a9 entityRelevance:(double)a10 entityRelevanceInferenceEventId:(id)a11 confirmationConfidence:(double)a12 isRelationshipMatch:(BOOL)a13 identifierInformation:(id)a14;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDRankerItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(GDRankerItem *)self entityID];
  v5 = [(GDRankerItem *)self sourceID];
  [(GDRankerItem *)self score];
  v7 = v6;
  v8 = [(GDRankerItem *)self entityClass];
  v9 = [(GDRankerItem *)self features];
  [(GDRankerItem *)self nameScore];
  v11 = v10;
  [(GDRankerItem *)self contextualScore];
  v13 = v12;
  [(GDRankerItem *)self entityRelevance];
  v15 = v14;
  v16 = [(GDRankerItem *)self entityRelevanceInferenceEventId];
  [(GDRankerItem *)self confirmationConfidence];
  v18 = v17;
  v19 = [(GDRankerItem *)self isRelationshipMatch];
  v20 = [(GDRankerItem *)self identifierInformation];
  v21 = [v3 stringWithFormat:@"<GDRankerItem: entityID: %@, sourceID: %@, score: %f, entityClass: %@, features: %@, nameScore: %f, contextualScore: %f, entityRelevance: %f, entityRelevanceInferenceEventId: %@, confirmationConfidence: %f, isRelationshipMatch: %d>, identifierInformation: %@", v4, v5, v7, v8, v9, v11, v13, v15, v16, v18, v19, v20];

  return v21;
}

- (GDRankerItem)initWithCoder:(id)a3
{
  v54[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_entityID);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_sourceID);
    v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

    if (v10 || ([v4 error], v46 = objc_claimAutoreleasedReturnValue(), v46, !v46))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromSelector(sel_entityClass);
      v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

      if (v13 || ([v4 error], v47 = objc_claimAutoreleasedReturnValue(), v47, !v47))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromSelector(sel_features);
        v16 = [v4 decodeObjectOfClass:v14 forKey:v15];

        if (!v16)
        {
          v48 = [v4 error];

          if (v48)
          {
            goto LABEL_17;
          }
        }

        v17 = NSStringFromSelector(sel_score);
        [v4 decodeDoubleForKey:v17];
        v19 = v18;

        v20 = NSStringFromSelector(sel_nameScore);
        [v4 decodeDoubleForKey:v20];
        v22 = v21;

        v23 = NSStringFromSelector(sel_contextualScore);
        [v4 decodeDoubleForKey:v23];
        v25 = v24;

        v26 = NSStringFromSelector(sel_entityRelevance);
        [v4 decodeDoubleForKey:v26];
        v28 = v27;

        v29 = NSStringFromSelector(sel_confirmationConfidence);
        [v4 decodeDoubleForKey:v29];
        v31 = v30;

        v32 = NSStringFromSelector(sel_isRelationshipMatch);
        v33 = [v4 decodeBoolForKey:v32];

        v34 = [v4 error];

        if (v34)
        {
LABEL_17:
          v41 = 0;
        }

        else
        {
          v35 = objc_opt_class();
          v36 = NSStringFromSelector(sel_entityRelevanceInferenceEventId);
          v37 = [v4 decodeObjectOfClass:v35 forKey:v36];

          if (v37 || ([v4 error], v49 = objc_claimAutoreleasedReturnValue(), v49, !v49))
          {
            v38 = objc_opt_class();
            v39 = NSStringFromSelector(sel_identifierInformation);
            v40 = [v4 decodeObjectOfClass:v38 forKey:v39];

            if (v40 || ([v4 error], v50 = objc_claimAutoreleasedReturnValue(), v50, !v50))
            {
              self = [(GDRankerItem *)self initWithEntityID:v7 sourceID:v10 entityClass:v13 features:v16 score:v37 nameScore:v33 contextualScore:v19 entityRelevance:v22 entityRelevanceInferenceEventId:v25 confirmationConfidence:v28 isRelationshipMatch:v31 identifierInformation:v40];
              v41 = self;
            }

            else
            {
              v41 = 0;
            }
          }

          else
          {
            v41 = 0;
          }
        }
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v42 = [v4 error];

    if (!v42)
    {
      v43 = MEMORY[0x1E696ABC0];
      v53 = *MEMORY[0x1E696A578];
      v54[0] = @"GDRankerItem entityID is nil";
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
      v45 = [v43 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v44];
      [v4 failWithError:v45];
    }

    v41 = 0;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v41;
}

- (void)encodeWithCoder:(id)a3
{
  entityID = self->_entityID;
  v5 = a3;
  v6 = NSStringFromSelector(sel_entityID);
  [v5 encodeObject:entityID forKey:v6];

  sourceID = self->_sourceID;
  v8 = NSStringFromSelector(sel_sourceID);
  [v5 encodeObject:sourceID forKey:v8];

  entityClass = self->_entityClass;
  v10 = NSStringFromSelector(sel_entityClass);
  [v5 encodeObject:entityClass forKey:v10];

  features = self->_features;
  v12 = NSStringFromSelector(sel_features);
  [v5 encodeObject:features forKey:v12];

  score = self->_score;
  v14 = NSStringFromSelector(sel_score);
  [v5 encodeDouble:v14 forKey:score];

  nameScore = self->_nameScore;
  v16 = NSStringFromSelector(sel_nameScore);
  [v5 encodeDouble:v16 forKey:nameScore];

  contextualScore = self->_contextualScore;
  v18 = NSStringFromSelector(sel_contextualScore);
  [v5 encodeDouble:v18 forKey:contextualScore];

  entityRelevance = self->_entityRelevance;
  v20 = NSStringFromSelector(sel_entityRelevance);
  [v5 encodeDouble:v20 forKey:entityRelevance];

  entityRelevanceInferenceEventId = self->_entityRelevanceInferenceEventId;
  v22 = NSStringFromSelector(sel_entityRelevanceInferenceEventId);
  [v5 encodeObject:entityRelevanceInferenceEventId forKey:v22];

  confirmationConfidence = self->_confirmationConfidence;
  v24 = NSStringFromSelector(sel_confirmationConfidence);
  [v5 encodeDouble:v24 forKey:confirmationConfidence];

  isRelationshipMatch = self->_isRelationshipMatch;
  v26 = NSStringFromSelector(sel_isRelationshipMatch);
  [v5 encodeBool:isRelationshipMatch forKey:v26];

  identifierInformation = self->_identifierInformation;
  v28 = NSStringFromSelector(sel_identifierInformation);
  [v5 encodeObject:identifierInformation forKey:v28];
}

- (GDRankerItem)initWithEntityID:(id)a3 sourceID:(id)a4 entityClass:(id)a5 features:(id)a6 score:(double)a7 nameScore:(double)a8 contextualScore:(double)a9 entityRelevance:(double)a10 entityRelevanceInferenceEventId:(id)a11 confirmationConfidence:(double)a12 isRelationshipMatch:(BOOL)a13 identifierInformation:(id)a14
{
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a11;
  v30 = a14;
  v42.receiver = self;
  v42.super_class = GDRankerItem;
  v31 = [(GDRankerItem *)&v42 init];
  if (v31)
  {
    v32 = [v25 copy];
    entityID = v31->_entityID;
    v31->_entityID = v32;

    v34 = [v26 copy];
    sourceID = v31->_sourceID;
    v31->_sourceID = v34;

    v36 = [v27 copy];
    entityClass = v31->_entityClass;
    v31->_entityClass = v36;

    v38 = [v28 copy];
    features = v31->_features;
    v31->_features = v38;

    v31->_confidence = a7;
    v31->_score = a7;
    v31->_nameScore = a8;
    v31->_contextualScore = a9;
    v31->_entityRelevance = a10;
    if (v29)
    {
      v40 = v29;
    }

    else
    {
      v40 = &unk_1F20CF188;
    }

    objc_storeStrong(&v31->_entityRelevanceInferenceEventId, v40);
    v31->_confirmationConfidence = a12;
    v31->_isRelationshipMatch = a13;
    objc_storeStrong(&v31->_identifierInformation, a14);
  }

  return v31;
}

@end