@interface MOClusterMetadata
- (MOClusterMetadata)initWithCoder:(id)coder;
- (MOClusterMetadata)initWithIdentifier:(id)identifier isFiltered:(BOOL)filtered phenoType:(id)type topLevelActivityHistogram:(id)histogram secondLevelActivityHistogram:(id)activityHistogram activityTypeFromPhotoTraitsHistogram:(id)traitsHistogram timeTagHistogram:(id)tagHistogram dayOfWeekHistogram:(id)self0 weekOfYearHistogram:(id)self1 timeContextFromPhotoTraitsHistogram:(id)self2 holidayHistogram:(id)self3 celebrationHistogram:(id)self4 placeNameHistogram:(id)self5 combinedPlaceTypeHistogram:(id)self6 enclosingPlaceNameHistogram:(id)self7 placeTypeFromPhotoTraitsHistogram:(id)self8 contactNamesHistogram:(id)self9 personRelationshipHistogram:(id)relationshipHistogram socialEventFromPhotoTraitsHistogram:(id)eventFromPhotoTraitsHistogram otherSubjectFromPhotoTraitsHistogram:(id)subjectFromPhotoTraitsHistogram stateOfMindValenceHistogram:(id)valenceHistogram subBundleGoodnessScores:(id)scores subSuggestionIDsBeforePruning:(id)pruning phenotypePersonUUIDs:(id)ds;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOClusterMetadata

- (MOClusterMetadata)initWithIdentifier:(id)identifier isFiltered:(BOOL)filtered phenoType:(id)type topLevelActivityHistogram:(id)histogram secondLevelActivityHistogram:(id)activityHistogram activityTypeFromPhotoTraitsHistogram:(id)traitsHistogram timeTagHistogram:(id)tagHistogram dayOfWeekHistogram:(id)self0 weekOfYearHistogram:(id)self1 timeContextFromPhotoTraitsHistogram:(id)self2 holidayHistogram:(id)self3 celebrationHistogram:(id)self4 placeNameHistogram:(id)self5 combinedPlaceTypeHistogram:(id)self6 enclosingPlaceNameHistogram:(id)self7 placeTypeFromPhotoTraitsHistogram:(id)self8 contactNamesHistogram:(id)self9 personRelationshipHistogram:(id)relationshipHistogram socialEventFromPhotoTraitsHistogram:(id)eventFromPhotoTraitsHistogram otherSubjectFromPhotoTraitsHistogram:(id)subjectFromPhotoTraitsHistogram stateOfMindValenceHistogram:(id)valenceHistogram subBundleGoodnessScores:(id)scores subSuggestionIDsBeforePruning:(id)pruning phenotypePersonUUIDs:(id)ds
{
  identifierCopy = identifier;
  typeCopy = type;
  histogramCopy = histogram;
  activityHistogramCopy = activityHistogram;
  traitsHistogramCopy = traitsHistogram;
  traitsHistogramCopy2 = traitsHistogram;
  tagHistogramCopy = tagHistogram;
  weekHistogramCopy = weekHistogram;
  yearHistogramCopy = yearHistogram;
  photoTraitsHistogramCopy = photoTraitsHistogram;
  holidayHistogramCopy = holidayHistogram;
  celebrationHistogramCopy = celebrationHistogram;
  nameHistogramCopy = nameHistogram;
  typeHistogramCopy = typeHistogram;
  placeNameHistogramCopy = placeNameHistogram;
  fromPhotoTraitsHistogramCopy = fromPhotoTraitsHistogram;
  namesHistogramCopy = namesHistogram;
  relationshipHistogramCopy = relationshipHistogram;
  eventFromPhotoTraitsHistogramCopy = eventFromPhotoTraitsHistogram;
  subjectFromPhotoTraitsHistogramCopy = subjectFromPhotoTraitsHistogram;
  valenceHistogramCopy = valenceHistogram;
  scoresCopy = scores;
  pruningCopy = pruning;
  dsCopy = ds;
  v60.receiver = self;
  v60.super_class = MOClusterMetadata;
  v35 = [(MOClusterMetadata *)&v60 init];
  v36 = v35;
  if (v35)
  {
    objc_storeStrong(&v35->_identifier, identifier);
    v36->_isFiltered = filtered;
    objc_storeStrong(&v36->_phenotype, type);
    objc_storeStrong(&v36->_topLevelActivityHistogram, histogram);
    objc_storeStrong(&v36->_secondLevelActivityHistogram, activityHistogram);
    objc_storeStrong(&v36->_activityTypeFromPhotoTraitsHistogram, traitsHistogramCopy);
    objc_storeStrong(&v36->_timeTagHistogram, tagHistogram);
    objc_storeStrong(&v36->_dayOfWeekHistogram, weekHistogram);
    objc_storeStrong(&v36->_weekOfYearHistogram, yearHistogram);
    objc_storeStrong(&v36->_timeContextFromPhotoTraitsHistogram, photoTraitsHistogram);
    objc_storeStrong(&v36->_placeNameHistogram, nameHistogram);
    objc_storeStrong(&v36->_combinedPlaceTypeHistogram, typeHistogram);
    objc_storeStrong(&v36->_enclosingPlaceNameHistogram, placeNameHistogram);
    objc_storeStrong(&v36->_placeTypeFromPhotoTraitsHistogram, fromPhotoTraitsHistogram);
    objc_storeStrong(&v36->_contactNamesHistogram, namesHistogram);
    objc_storeStrong(&v36->_personRelationshipHistogram, relationshipHistogram);
    objc_storeStrong(&v36->_socialEventFromPhotoTraitsHistogram, eventFromPhotoTraitsHistogram);
    objc_storeStrong(&v36->_otherSubjectFromPhotoTraitsHistogram, subjectFromPhotoTraitsHistogram);
    objc_storeStrong(&v36->_subBundleGoodnessScores, scores);
    objc_storeStrong(&v36->_subSuggestionIDsBeforePruning, pruning);
    objc_storeStrong(&v36->_stateOfMindValenceHistogram, valenceHistogram);
    objc_storeStrong(&v36->_holidayHistogram, holidayHistogram);
    objc_storeStrong(&v36->_celebrationHistogram, celebrationHistogram);
    objc_storeStrong(&v36->_phenotypePersonUUIDs, ds);
  }

  return v36;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeBool:self->_isFiltered forKey:@"isFiltered"];
  v5 = [MODictionaryEncoder encodeDictionary:self->_phenotype];
  [coderCopy encodeObject:v5 forKey:@"phenotype"];

  v6 = [MODictionaryEncoder encodeDictionary:self->_topLevelActivityHistogram];
  [coderCopy encodeObject:v6 forKey:@"topLevelActivityTypeHistogram"];

  v7 = [MODictionaryEncoder encodeDictionary:self->_secondLevelActivityHistogram];
  [coderCopy encodeObject:v7 forKey:@"secondLevelActivityTypeHistogram"];

  v8 = [MODictionaryEncoder encodeDictionary:self->_activityTypeFromPhotoTraitsHistogram];
  [coderCopy encodeObject:v8 forKey:@"activityTypeFromPhotoTraitsHistogram"];

  v9 = [MODictionaryEncoder encodeDictionary:self->_timeTagHistogram];
  [coderCopy encodeObject:v9 forKey:@"timeTagHistogram"];

  v10 = [MODictionaryEncoder encodeDictionary:self->_dayOfWeekHistogram];
  [coderCopy encodeObject:v10 forKey:@"dayOfWeekHistogram"];

  v11 = [MODictionaryEncoder encodeDictionary:self->_weekOfYearHistogram];
  [coderCopy encodeObject:v11 forKey:@"weekOfYearHistogram"];

  v12 = [MODictionaryEncoder encodeDictionary:self->_timeContextFromPhotoTraitsHistogram];
  [coderCopy encodeObject:v12 forKey:@"timeContextFromPhotoTraitsHistogram"];

  v13 = [MODictionaryEncoder encodeDictionary:self->_placeNameHistogram];
  [coderCopy encodeObject:v13 forKey:@"placeNameHistogram"];

  v14 = [MODictionaryEncoder encodeDictionary:self->_combinedPlaceTypeHistogram];
  [coderCopy encodeObject:v14 forKey:@"combinedPlaceTypeHistogram"];

  v15 = [MODictionaryEncoder encodeDictionary:self->_enclosingPlaceNameHistogram];
  [coderCopy encodeObject:v15 forKey:@"enclosingPlaceNameHistogram"];

  v16 = [MODictionaryEncoder encodeDictionary:self->_placeTypeFromPhotoTraitsHistogram];
  [coderCopy encodeObject:v16 forKey:@"placeTypeFromPhotoTraitsHistogram"];

  v17 = [MODictionaryEncoder encodeDictionary:self->_contactNamesHistogram];
  [coderCopy encodeObject:v17 forKey:@"contactNamesHistogram"];

  v18 = [MODictionaryEncoder encodeDictionary:self->_personRelationshipHistogram];
  [coderCopy encodeObject:v18 forKey:@"personRelationshipHistogram"];

  v19 = [MODictionaryEncoder encodeDictionary:self->_socialEventFromPhotoTraitsHistogram];
  [coderCopy encodeObject:v19 forKey:@"socialEventFromPhotoTraitsHistogram"];

  v20 = [MODictionaryEncoder encodeDictionary:self->_otherSubjectFromPhotoTraitsHistogram];
  [coderCopy encodeObject:v20 forKey:@"otherSubjectFromPhotoTraitsHistogram"];

  [coderCopy encodeObject:self->_subBundleGoodnessScores forKey:@"subBundleGoodnessScores"];
  [coderCopy encodeObject:self->_subSuggestionIDsBeforePruning forKey:@"subSuggestionIDsBeforePruning"];
  v21 = [MODictionaryEncoder encodeDictionary:self->_holidayHistogram];
  [coderCopy encodeObject:v21 forKey:@"holidayHistogram"];

  v22 = [MODictionaryEncoder encodeDictionary:self->_celebrationHistogram];
  [coderCopy encodeObject:v22 forKey:@"celebrationHistogram"];

  v23 = [MODictionaryEncoder encodeDictionary:self->_stateOfMindValenceHistogram];
  [coderCopy encodeObject:v23 forKey:@"stateOfMindValenceHistogram"];

  [coderCopy encodeObject:self->_phenotypePersonUUIDs forKey:@"phenotypePersonUUIDs"];
}

- (MOClusterMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v44 = [coderCopy decodeBoolForKey:@"isFiltered"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phenotype"];
  v58 = [MODictionaryEncoder decodeToDictionary:v4];

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topLevelActivityTypeHistogram"];
  v56 = [MODictionaryEncoder decodeToDictionary:v5];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondLevelActivityTypeHistogram"];
  v55 = [MODictionaryEncoder decodeToDictionary:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityTypeFromPhotoTraitsHistogram"];
  v54 = [MODictionaryEncoder decodeToDictionary:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeTagHistogram"];
  v53 = [MODictionaryEncoder decodeToDictionary:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dayOfWeekHistogram"];
  v52 = [MODictionaryEncoder decodeToDictionary:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"weekOfYearHistogram"];
  v51 = [MODictionaryEncoder decodeToDictionary:v10];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeContextFromPhotoTraitsHistogram"];
  v50 = [MODictionaryEncoder decodeToDictionary:v11];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeNameHistogram"];
  v49 = [MODictionaryEncoder decodeToDictionary:v12];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"combinedPlaceTypeHistogram"];
  v48 = [MODictionaryEncoder decodeToDictionary:v13];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enclosingPlaceNameHistogram"];
  v47 = [MODictionaryEncoder decodeToDictionary:v14];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeTypeFromPhotoTraitsHistogram"];
  v43 = [MODictionaryEncoder decodeToDictionary:v15];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactNamesHistogram"];
  v42 = [MODictionaryEncoder decodeToDictionary:v16];

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personRelationshipHistogram"];
  v41 = [MODictionaryEncoder decodeToDictionary:v17];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"socialEventFromPhotoTraitsHistogram"];
  v40 = [MODictionaryEncoder decodeToDictionary:v18];

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"otherSubjectFromPhotoTraitsHistogram"];
  v39 = [MODictionaryEncoder decodeToDictionary:v19];

  v20 = MEMORY[0x277CBEB98];
  v21 = objc_opt_class();
  v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
  v38 = [coderCopy decodeObjectOfClasses:v22 forKey:@"subBundleGoodnessScores"];

  v23 = MEMORY[0x277CBEB98];
  v24 = objc_opt_class();
  v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
  v36 = [coderCopy decodeObjectOfClasses:v25 forKey:@"subSuggestionIDsBeforePruning"];

  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"holidayHistogram"];
  v37 = [MODictionaryEncoder decodeToDictionary:v26];

  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"celebrationHistogram"];
  v28 = [MODictionaryEncoder decodeToDictionary:v27];

  v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stateOfMindValenceHistogram"];
  v30 = [MODictionaryEncoder decodeToDictionary:v29];

  v31 = MEMORY[0x277CBEB98];
  v32 = objc_opt_class();
  v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
  v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"phenotypePersonUUIDs"];

  v46 = [(MOClusterMetadata *)self initWithIdentifier:v57 isFiltered:v44 phenoType:v58 topLevelActivityHistogram:v56 secondLevelActivityHistogram:v55 activityTypeFromPhotoTraitsHistogram:v54 timeTagHistogram:v53 dayOfWeekHistogram:v52 weekOfYearHistogram:v51 timeContextFromPhotoTraitsHistogram:v50 holidayHistogram:v37 celebrationHistogram:v28 placeNameHistogram:v49 combinedPlaceTypeHistogram:v48 enclosingPlaceNameHistogram:v47 placeTypeFromPhotoTraitsHistogram:v43 contactNamesHistogram:v42 personRelationshipHistogram:v41 socialEventFromPhotoTraitsHistogram:v40 otherSubjectFromPhotoTraitsHistogram:v39 stateOfMindValenceHistogram:v30 subBundleGoodnessScores:v38 subSuggestionIDsBeforePruning:v36 phenotypePersonUUIDs:v34];
  return v46;
}

@end