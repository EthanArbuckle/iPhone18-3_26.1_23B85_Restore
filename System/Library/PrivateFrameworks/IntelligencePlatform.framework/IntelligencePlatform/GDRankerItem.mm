@interface GDRankerItem
- (GDRankerItem)initWithCoder:(id)coder;
- (GDRankerItem)initWithEntityID:(id)d sourceID:(id)iD entityClass:(id)class features:(id)features score:(double)score nameScore:(double)nameScore contextualScore:(double)contextualScore entityRelevance:(double)self0 entityRelevanceInferenceEventId:(id)self1 confirmationConfidence:(double)self2 isRelationshipMatch:(BOOL)self3 identifierInformation:(id)self4;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDRankerItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  entityID = [(GDRankerItem *)self entityID];
  sourceID = [(GDRankerItem *)self sourceID];
  [(GDRankerItem *)self score];
  v7 = v6;
  entityClass = [(GDRankerItem *)self entityClass];
  features = [(GDRankerItem *)self features];
  [(GDRankerItem *)self nameScore];
  v11 = v10;
  [(GDRankerItem *)self contextualScore];
  v13 = v12;
  [(GDRankerItem *)self entityRelevance];
  v15 = v14;
  entityRelevanceInferenceEventId = [(GDRankerItem *)self entityRelevanceInferenceEventId];
  [(GDRankerItem *)self confirmationConfidence];
  v18 = v17;
  isRelationshipMatch = [(GDRankerItem *)self isRelationshipMatch];
  identifierInformation = [(GDRankerItem *)self identifierInformation];
  v21 = [v3 stringWithFormat:@"<GDRankerItem: entityID: %@, sourceID: %@, score: %f, entityClass: %@, features: %@, nameScore: %f, contextualScore: %f, entityRelevance: %f, entityRelevanceInferenceEventId: %@, confirmationConfidence: %f, isRelationshipMatch: %d>, identifierInformation: %@", entityID, sourceID, v7, entityClass, features, v11, v13, v15, entityRelevanceInferenceEventId, v18, isRelationshipMatch, identifierInformation];

  return v21;
}

- (GDRankerItem)initWithCoder:(id)coder
{
  v54[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_entityID);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_sourceID);
    v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

    if (v10 || ([coderCopy error], v46 = objc_claimAutoreleasedReturnValue(), v46, !v46))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromSelector(sel_entityClass);
      v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

      if (v13 || ([coderCopy error], v47 = objc_claimAutoreleasedReturnValue(), v47, !v47))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromSelector(sel_features);
        v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];

        if (!v16)
        {
          error = [coderCopy error];

          if (error)
          {
            goto LABEL_17;
          }
        }

        v17 = NSStringFromSelector(sel_score);
        [coderCopy decodeDoubleForKey:v17];
        v19 = v18;

        v20 = NSStringFromSelector(sel_nameScore);
        [coderCopy decodeDoubleForKey:v20];
        v22 = v21;

        v23 = NSStringFromSelector(sel_contextualScore);
        [coderCopy decodeDoubleForKey:v23];
        v25 = v24;

        v26 = NSStringFromSelector(sel_entityRelevance);
        [coderCopy decodeDoubleForKey:v26];
        v28 = v27;

        v29 = NSStringFromSelector(sel_confirmationConfidence);
        [coderCopy decodeDoubleForKey:v29];
        v31 = v30;

        v32 = NSStringFromSelector(sel_isRelationshipMatch);
        v33 = [coderCopy decodeBoolForKey:v32];

        error2 = [coderCopy error];

        if (error2)
        {
LABEL_17:
          selfCopy = 0;
        }

        else
        {
          v35 = objc_opt_class();
          v36 = NSStringFromSelector(sel_entityRelevanceInferenceEventId);
          v37 = [coderCopy decodeObjectOfClass:v35 forKey:v36];

          if (v37 || ([coderCopy error], v49 = objc_claimAutoreleasedReturnValue(), v49, !v49))
          {
            v38 = objc_opt_class();
            v39 = NSStringFromSelector(sel_identifierInformation);
            v40 = [coderCopy decodeObjectOfClass:v38 forKey:v39];

            if (v40 || ([coderCopy error], v50 = objc_claimAutoreleasedReturnValue(), v50, !v50))
            {
              self = [(GDRankerItem *)self initWithEntityID:v7 sourceID:v10 entityClass:v13 features:v16 score:v37 nameScore:v33 contextualScore:v19 entityRelevance:v22 entityRelevanceInferenceEventId:v25 confirmationConfidence:v28 isRelationshipMatch:v31 identifierInformation:v40];
              selfCopy = self;
            }

            else
            {
              selfCopy = 0;
            }
          }

          else
          {
            selfCopy = 0;
          }
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    error3 = [coderCopy error];

    if (!error3)
    {
      v43 = MEMORY[0x1E696ABC0];
      v53 = *MEMORY[0x1E696A578];
      v54[0] = @"GDRankerItem entityID is nil";
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
      v45 = [v43 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v44];
      [coderCopy failWithError:v45];
    }

    selfCopy = 0;
  }

  v51 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  entityID = self->_entityID;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_entityID);
  [coderCopy encodeObject:entityID forKey:v6];

  sourceID = self->_sourceID;
  v8 = NSStringFromSelector(sel_sourceID);
  [coderCopy encodeObject:sourceID forKey:v8];

  entityClass = self->_entityClass;
  v10 = NSStringFromSelector(sel_entityClass);
  [coderCopy encodeObject:entityClass forKey:v10];

  features = self->_features;
  v12 = NSStringFromSelector(sel_features);
  [coderCopy encodeObject:features forKey:v12];

  score = self->_score;
  v14 = NSStringFromSelector(sel_score);
  [coderCopy encodeDouble:v14 forKey:score];

  nameScore = self->_nameScore;
  v16 = NSStringFromSelector(sel_nameScore);
  [coderCopy encodeDouble:v16 forKey:nameScore];

  contextualScore = self->_contextualScore;
  v18 = NSStringFromSelector(sel_contextualScore);
  [coderCopy encodeDouble:v18 forKey:contextualScore];

  entityRelevance = self->_entityRelevance;
  v20 = NSStringFromSelector(sel_entityRelevance);
  [coderCopy encodeDouble:v20 forKey:entityRelevance];

  entityRelevanceInferenceEventId = self->_entityRelevanceInferenceEventId;
  v22 = NSStringFromSelector(sel_entityRelevanceInferenceEventId);
  [coderCopy encodeObject:entityRelevanceInferenceEventId forKey:v22];

  confirmationConfidence = self->_confirmationConfidence;
  v24 = NSStringFromSelector(sel_confirmationConfidence);
  [coderCopy encodeDouble:v24 forKey:confirmationConfidence];

  isRelationshipMatch = self->_isRelationshipMatch;
  v26 = NSStringFromSelector(sel_isRelationshipMatch);
  [coderCopy encodeBool:isRelationshipMatch forKey:v26];

  identifierInformation = self->_identifierInformation;
  v28 = NSStringFromSelector(sel_identifierInformation);
  [coderCopy encodeObject:identifierInformation forKey:v28];
}

- (GDRankerItem)initWithEntityID:(id)d sourceID:(id)iD entityClass:(id)class features:(id)features score:(double)score nameScore:(double)nameScore contextualScore:(double)contextualScore entityRelevance:(double)self0 entityRelevanceInferenceEventId:(id)self1 confirmationConfidence:(double)self2 isRelationshipMatch:(BOOL)self3 identifierInformation:(id)self4
{
  dCopy = d;
  iDCopy = iD;
  classCopy = class;
  featuresCopy = features;
  idCopy = id;
  informationCopy = information;
  v42.receiver = self;
  v42.super_class = GDRankerItem;
  v31 = [(GDRankerItem *)&v42 init];
  if (v31)
  {
    v32 = [dCopy copy];
    entityID = v31->_entityID;
    v31->_entityID = v32;

    v34 = [iDCopy copy];
    sourceID = v31->_sourceID;
    v31->_sourceID = v34;

    v36 = [classCopy copy];
    entityClass = v31->_entityClass;
    v31->_entityClass = v36;

    v38 = [featuresCopy copy];
    features = v31->_features;
    v31->_features = v38;

    v31->_confidence = score;
    v31->_score = score;
    v31->_nameScore = nameScore;
    v31->_contextualScore = contextualScore;
    v31->_entityRelevance = relevance;
    if (idCopy)
    {
      v40 = idCopy;
    }

    else
    {
      v40 = &unk_1F20CF188;
    }

    objc_storeStrong(&v31->_entityRelevanceInferenceEventId, v40);
    v31->_confirmationConfidence = confidence;
    v31->_isRelationshipMatch = match;
    objc_storeStrong(&v31->_identifierInformation, information);
  }

  return v31;
}

@end