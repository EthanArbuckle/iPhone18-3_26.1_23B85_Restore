@interface MOClusterMetadata
- (MOClusterMetadata)initWithCoder:(id)a3;
- (MOClusterMetadata)initWithIdentifier:(id)a3 isFiltered:(BOOL)a4 phenoType:(id)a5 topLevelActivityHistogram:(id)a6 secondLevelActivityHistogram:(id)a7 activityTypeFromPhotoTraitsHistogram:(id)a8 timeTagHistogram:(id)a9 dayOfWeekHistogram:(id)a10 weekOfYearHistogram:(id)a11 timeContextFromPhotoTraitsHistogram:(id)a12 holidayHistogram:(id)a13 celebrationHistogram:(id)a14 placeNameHistogram:(id)a15 combinedPlaceTypeHistogram:(id)a16 enclosingPlaceNameHistogram:(id)a17 placeTypeFromPhotoTraitsHistogram:(id)a18 contactNamesHistogram:(id)a19 personRelationshipHistogram:(id)a20 socialEventFromPhotoTraitsHistogram:(id)a21 otherSubjectFromPhotoTraitsHistogram:(id)a22 stateOfMindValenceHistogram:(id)a23 subBundleGoodnessScores:(id)a24 subSuggestionIDsBeforePruning:(id)a25 phenotypePersonUUIDs:(id)a26;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOClusterMetadata

- (MOClusterMetadata)initWithIdentifier:(id)a3 isFiltered:(BOOL)a4 phenoType:(id)a5 topLevelActivityHistogram:(id)a6 secondLevelActivityHistogram:(id)a7 activityTypeFromPhotoTraitsHistogram:(id)a8 timeTagHistogram:(id)a9 dayOfWeekHistogram:(id)a10 weekOfYearHistogram:(id)a11 timeContextFromPhotoTraitsHistogram:(id)a12 holidayHistogram:(id)a13 celebrationHistogram:(id)a14 placeNameHistogram:(id)a15 combinedPlaceTypeHistogram:(id)a16 enclosingPlaceNameHistogram:(id)a17 placeTypeFromPhotoTraitsHistogram:(id)a18 contactNamesHistogram:(id)a19 personRelationshipHistogram:(id)a20 socialEventFromPhotoTraitsHistogram:(id)a21 otherSubjectFromPhotoTraitsHistogram:(id)a22 stateOfMindValenceHistogram:(id)a23 subBundleGoodnessScores:(id)a24 subSuggestionIDsBeforePruning:(id)a25 phenotypePersonUUIDs:(id)a26
{
  v59 = a3;
  v58 = a5;
  v57 = a6;
  v56 = a7;
  v40 = a8;
  v55 = a8;
  v54 = a9;
  v53 = a10;
  v52 = a11;
  v51 = a12;
  v50 = a13;
  v47 = a14;
  v49 = a15;
  v48 = a16;
  v46 = a17;
  v30 = a18;
  v31 = a19;
  v32 = a20;
  v45 = a21;
  v44 = a22;
  v43 = a23;
  v42 = a24;
  v33 = a25;
  v34 = a26;
  v60.receiver = self;
  v60.super_class = MOClusterMetadata;
  v35 = [(MOClusterMetadata *)&v60 init];
  v36 = v35;
  if (v35)
  {
    objc_storeStrong(&v35->_identifier, a3);
    v36->_isFiltered = a4;
    objc_storeStrong(&v36->_phenotype, a5);
    objc_storeStrong(&v36->_topLevelActivityHistogram, a6);
    objc_storeStrong(&v36->_secondLevelActivityHistogram, a7);
    objc_storeStrong(&v36->_activityTypeFromPhotoTraitsHistogram, v40);
    objc_storeStrong(&v36->_timeTagHistogram, a9);
    objc_storeStrong(&v36->_dayOfWeekHistogram, a10);
    objc_storeStrong(&v36->_weekOfYearHistogram, a11);
    objc_storeStrong(&v36->_timeContextFromPhotoTraitsHistogram, a12);
    objc_storeStrong(&v36->_placeNameHistogram, a15);
    objc_storeStrong(&v36->_combinedPlaceTypeHistogram, a16);
    objc_storeStrong(&v36->_enclosingPlaceNameHistogram, a17);
    objc_storeStrong(&v36->_placeTypeFromPhotoTraitsHistogram, a18);
    objc_storeStrong(&v36->_contactNamesHistogram, a19);
    objc_storeStrong(&v36->_personRelationshipHistogram, a20);
    objc_storeStrong(&v36->_socialEventFromPhotoTraitsHistogram, a21);
    objc_storeStrong(&v36->_otherSubjectFromPhotoTraitsHistogram, a22);
    objc_storeStrong(&v36->_subBundleGoodnessScores, a24);
    objc_storeStrong(&v36->_subSuggestionIDsBeforePruning, a25);
    objc_storeStrong(&v36->_stateOfMindValenceHistogram, a23);
    objc_storeStrong(&v36->_holidayHistogram, a13);
    objc_storeStrong(&v36->_celebrationHistogram, a14);
    objc_storeStrong(&v36->_phenotypePersonUUIDs, a26);
  }

  return v36;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v24 = a3;
  [v24 encodeObject:identifier forKey:@"identifier"];
  [v24 encodeBool:self->_isFiltered forKey:@"isFiltered"];
  v5 = [MODictionaryEncoder encodeDictionary:self->_phenotype];
  [v24 encodeObject:v5 forKey:@"phenotype"];

  v6 = [MODictionaryEncoder encodeDictionary:self->_topLevelActivityHistogram];
  [v24 encodeObject:v6 forKey:@"topLevelActivityTypeHistogram"];

  v7 = [MODictionaryEncoder encodeDictionary:self->_secondLevelActivityHistogram];
  [v24 encodeObject:v7 forKey:@"secondLevelActivityTypeHistogram"];

  v8 = [MODictionaryEncoder encodeDictionary:self->_activityTypeFromPhotoTraitsHistogram];
  [v24 encodeObject:v8 forKey:@"activityTypeFromPhotoTraitsHistogram"];

  v9 = [MODictionaryEncoder encodeDictionary:self->_timeTagHistogram];
  [v24 encodeObject:v9 forKey:@"timeTagHistogram"];

  v10 = [MODictionaryEncoder encodeDictionary:self->_dayOfWeekHistogram];
  [v24 encodeObject:v10 forKey:@"dayOfWeekHistogram"];

  v11 = [MODictionaryEncoder encodeDictionary:self->_weekOfYearHistogram];
  [v24 encodeObject:v11 forKey:@"weekOfYearHistogram"];

  v12 = [MODictionaryEncoder encodeDictionary:self->_timeContextFromPhotoTraitsHistogram];
  [v24 encodeObject:v12 forKey:@"timeContextFromPhotoTraitsHistogram"];

  v13 = [MODictionaryEncoder encodeDictionary:self->_placeNameHistogram];
  [v24 encodeObject:v13 forKey:@"placeNameHistogram"];

  v14 = [MODictionaryEncoder encodeDictionary:self->_combinedPlaceTypeHistogram];
  [v24 encodeObject:v14 forKey:@"combinedPlaceTypeHistogram"];

  v15 = [MODictionaryEncoder encodeDictionary:self->_enclosingPlaceNameHistogram];
  [v24 encodeObject:v15 forKey:@"enclosingPlaceNameHistogram"];

  v16 = [MODictionaryEncoder encodeDictionary:self->_placeTypeFromPhotoTraitsHistogram];
  [v24 encodeObject:v16 forKey:@"placeTypeFromPhotoTraitsHistogram"];

  v17 = [MODictionaryEncoder encodeDictionary:self->_contactNamesHistogram];
  [v24 encodeObject:v17 forKey:@"contactNamesHistogram"];

  v18 = [MODictionaryEncoder encodeDictionary:self->_personRelationshipHistogram];
  [v24 encodeObject:v18 forKey:@"personRelationshipHistogram"];

  v19 = [MODictionaryEncoder encodeDictionary:self->_socialEventFromPhotoTraitsHistogram];
  [v24 encodeObject:v19 forKey:@"socialEventFromPhotoTraitsHistogram"];

  v20 = [MODictionaryEncoder encodeDictionary:self->_otherSubjectFromPhotoTraitsHistogram];
  [v24 encodeObject:v20 forKey:@"otherSubjectFromPhotoTraitsHistogram"];

  [v24 encodeObject:self->_subBundleGoodnessScores forKey:@"subBundleGoodnessScores"];
  [v24 encodeObject:self->_subSuggestionIDsBeforePruning forKey:@"subSuggestionIDsBeforePruning"];
  v21 = [MODictionaryEncoder encodeDictionary:self->_holidayHistogram];
  [v24 encodeObject:v21 forKey:@"holidayHistogram"];

  v22 = [MODictionaryEncoder encodeDictionary:self->_celebrationHistogram];
  [v24 encodeObject:v22 forKey:@"celebrationHistogram"];

  v23 = [MODictionaryEncoder encodeDictionary:self->_stateOfMindValenceHistogram];
  [v24 encodeObject:v23 forKey:@"stateOfMindValenceHistogram"];

  [v24 encodeObject:self->_phenotypePersonUUIDs forKey:@"phenotypePersonUUIDs"];
}

- (MOClusterMetadata)initWithCoder:(id)a3
{
  v3 = a3;
  v57 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v44 = [v3 decodeBoolForKey:@"isFiltered"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"phenotype"];
  v58 = [MODictionaryEncoder decodeToDictionary:v4];

  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"topLevelActivityTypeHistogram"];
  v56 = [MODictionaryEncoder decodeToDictionary:v5];

  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"secondLevelActivityTypeHistogram"];
  v55 = [MODictionaryEncoder decodeToDictionary:v6];

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"activityTypeFromPhotoTraitsHistogram"];
  v54 = [MODictionaryEncoder decodeToDictionary:v7];

  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"timeTagHistogram"];
  v53 = [MODictionaryEncoder decodeToDictionary:v8];

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"dayOfWeekHistogram"];
  v52 = [MODictionaryEncoder decodeToDictionary:v9];

  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"weekOfYearHistogram"];
  v51 = [MODictionaryEncoder decodeToDictionary:v10];

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"timeContextFromPhotoTraitsHistogram"];
  v50 = [MODictionaryEncoder decodeToDictionary:v11];

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"placeNameHistogram"];
  v49 = [MODictionaryEncoder decodeToDictionary:v12];

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"combinedPlaceTypeHistogram"];
  v48 = [MODictionaryEncoder decodeToDictionary:v13];

  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"enclosingPlaceNameHistogram"];
  v47 = [MODictionaryEncoder decodeToDictionary:v14];

  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"placeTypeFromPhotoTraitsHistogram"];
  v43 = [MODictionaryEncoder decodeToDictionary:v15];

  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"contactNamesHistogram"];
  v42 = [MODictionaryEncoder decodeToDictionary:v16];

  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"personRelationshipHistogram"];
  v41 = [MODictionaryEncoder decodeToDictionary:v17];

  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"socialEventFromPhotoTraitsHistogram"];
  v40 = [MODictionaryEncoder decodeToDictionary:v18];

  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"otherSubjectFromPhotoTraitsHistogram"];
  v39 = [MODictionaryEncoder decodeToDictionary:v19];

  v20 = MEMORY[0x277CBEB98];
  v21 = objc_opt_class();
  v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
  v38 = [v3 decodeObjectOfClasses:v22 forKey:@"subBundleGoodnessScores"];

  v23 = MEMORY[0x277CBEB98];
  v24 = objc_opt_class();
  v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
  v36 = [v3 decodeObjectOfClasses:v25 forKey:@"subSuggestionIDsBeforePruning"];

  v26 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"holidayHistogram"];
  v37 = [MODictionaryEncoder decodeToDictionary:v26];

  v27 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"celebrationHistogram"];
  v28 = [MODictionaryEncoder decodeToDictionary:v27];

  v29 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"stateOfMindValenceHistogram"];
  v30 = [MODictionaryEncoder decodeToDictionary:v29];

  v31 = MEMORY[0x277CBEB98];
  v32 = objc_opt_class();
  v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
  v34 = [v3 decodeObjectOfClasses:v33 forKey:@"phenotypePersonUUIDs"];

  v46 = [(MOClusterMetadata *)self initWithIdentifier:v57 isFiltered:v44 phenoType:v58 topLevelActivityHistogram:v56 secondLevelActivityHistogram:v55 activityTypeFromPhotoTraitsHistogram:v54 timeTagHistogram:v53 dayOfWeekHistogram:v52 weekOfYearHistogram:v51 timeContextFromPhotoTraitsHistogram:v50 holidayHistogram:v37 celebrationHistogram:v28 placeNameHistogram:v49 combinedPlaceTypeHistogram:v48 enclosingPlaceNameHistogram:v47 placeTypeFromPhotoTraitsHistogram:v43 contactNamesHistogram:v42 personRelationshipHistogram:v41 socialEventFromPhotoTraitsHistogram:v40 otherSubjectFromPhotoTraitsHistogram:v39 stateOfMindValenceHistogram:v30 subBundleGoodnessScores:v38 subSuggestionIDsBeforePruning:v36 phenotypePersonUUIDs:v34];
  return v46;
}

@end