@interface GDEntityTaggingService
- (GDEntityTaggingService)initWithConfig:(id)config error:(id *)error;
- (id)entitiesForTag:(int64_t)tag options:(id)options error:(id *)error;
- (id)entitiesForTags:(id)tags options:(id)options error:(id *)error;
- (id)entityTagsForIdentifier:(id)identifier options:(id)options error:(id *)error;
- (id)entityTagsForIdentifiers:(id)identifiers options:(id)options error:(id *)error;
- (void)recordDirectFeedbackWithGradedTrue:(id)true gradedFalse:(id)false ignored:(id)ignored neverPresented:(id)presented error:(id *)error;
- (void)recordStatefulFeedback:(id)feedback error:(id *)error;
@end

@implementation GDEntityTaggingService

- (void)recordStatefulFeedback:(id)feedback error:(id *)error
{
  feedbackCopy = feedback;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1ABAB0F34;
  v13 = sub_1ABAB27A0;
  v14 = 0;
  inner = self->inner;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1ABEE1F1C;
  v8[3] = &unk_1E79628C8;
  v8[4] = &v9;
  [(GDEntityTaggingServiceInner *)inner recordStatefulFeedbackWithFeedback:feedbackCopy error:v8];
  if (error)
  {
    *error = v10[5];
  }

  _Block_object_dispose(&v9, 8);
}

- (void)recordDirectFeedbackWithGradedTrue:(id)true gradedFalse:(id)false ignored:(id)ignored neverPresented:(id)presented error:(id *)error
{
  trueCopy = true;
  falseCopy = false;
  ignoredCopy = ignored;
  presentedCopy = presented;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1ABAB0F34;
  v22 = sub_1ABAB27A0;
  v23 = 0;
  inner = self->inner;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1ABEE2084;
  v17[3] = &unk_1E79628C8;
  v17[4] = &v18;
  [(GDEntityTaggingServiceInner *)inner recordDirectFeedbackWithGradedTrue:trueCopy gradedFalse:falseCopy ignored:ignoredCopy neverPresented:presentedCopy error:v17];
  if (error)
  {
    *error = v19[5];
  }

  _Block_object_dispose(&v18, 8);
}

- (id)entitiesForTags:(id)tags options:(id)options error:(id *)error
{
  v75[1] = *MEMORY[0x1E69E9840];
  tagsCopy = tags;
  optionsCopy = options;
  v9 = optionsCopy;
  if (self->inner)
  {
    v10 = [GDPersonEntityTaggingOptionsInner alloc];
    v37 = v9;
    tagThresholds = [v9 tagThresholds];
    v12 = [(GDPersonEntityTaggingOptionsInner *)v10 initWithTagNameThresholds:tagThresholds];

    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = sub_1ABAB0F34;
    v68 = sub_1ABAB27A0;
    v69 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = sub_1ABAB0F34;
    v62 = sub_1ABAB27A0;
    v63 = 0;
    v13 = dispatch_semaphore_create(0);
    inner = self->inner;
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = sub_1ABEE2664;
    v54[3] = &unk_1E7961EF8;
    v56 = &v64;
    v57 = &v58;
    v15 = v13;
    v55 = v15;
    v38 = v12;
    [(GDEntityTaggingServiceInner *)inner personEntitiesFor:tagsCopy options:v12 completionHandler:v54];
    v16 = v15;
    v17 = dispatch_time(0, 5000000000);
    v18 = dispatch_semaphore_wait(v16, v17);
    v36 = v16;

    if (v18)
    {
      if (error)
      {
        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v72 = *MEMORY[0x1E696A578];
        v73 = @"Timed out waiting for EntityTaggingService to return.";
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:{1, v16}];
        *error = [v19 initWithDomain:@"GDErrorDomain" code:14 userInfo:v20];
      }
    }

    else
    {
      if (v65[5])
      {
        v43 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        obj = v65[5];
        v42 = [obj countByEnumeratingWithState:&v50 objects:v71 count:{16, v16}];
        if (v42)
        {
          v41 = *v51;
          do
          {
            for (i = 0; i != v42; ++i)
            {
              if (*v51 != v41)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v50 + 1) + 8 * i);
              v25 = [v65[5] objectForKey:v24];
              v44 = v24;
              v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v48 = 0u;
              v49 = 0u;
              v46 = 0u;
              v47 = 0u;
              scoredEntities = [v25 scoredEntities];
              v28 = [scoredEntities countByEnumeratingWithState:&v46 objects:v70 count:16];
              if (v28)
              {
                v29 = *v47;
                do
                {
                  for (j = 0; j != v28; ++j)
                  {
                    if (*v47 != v29)
                    {
                      objc_enumerationMutation(scoredEntities);
                    }

                    v31 = *(*(&v46 + 1) + 8 * j);
                    v32 = [GDScoredPersonEntity alloc];
                    idValue = [v31 idValue];
                    [v31 score];
                    v34 = [(GDScoredPersonEntity *)v32 initWithIDValue:idValue score:?];
                    [v26 addObject:v34];
                  }

                  v28 = [scoredEntities countByEnumeratingWithState:&v46 objects:v70 count:16];
                }

                while (v28);
              }

              v35 = -[GDRankedEntityTagPersons initWithTag:scoredEntities:entityRelevanceInferenceEventId:]([GDRankedEntityTagPersons alloc], "initWithTag:scoredEntities:entityRelevanceInferenceEventId:", [v25 gdTag], v26, objc_msgSend(v25, "inferenceEventIdValue"));
              [v43 setObject:v35 forKeyedSubscript:v44];
            }

            v42 = [obj countByEnumeratingWithState:&v50 objects:v71 count:16];
          }

          while (v42);
        }

        goto LABEL_6;
      }

      if (error)
      {
        v43 = 0;
        *error = v59[5];
        goto LABEL_6;
      }
    }

    v43 = 0;
LABEL_6:

    _Block_object_dispose(&v58, 8);
    _Block_object_dispose(&v64, 8);

LABEL_9:
    v9 = v37;
    goto LABEL_10;
  }

  if (error)
  {
    v37 = optionsCopy;
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v74 = *MEMORY[0x1E696A578];
    v75[0] = @"Error when initializing EntityTaggingService.";
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];
    v43 = 0;
    *error = [v21 initWithDomain:@"GDErrorDomain" code:1 userInfo:v38];
    goto LABEL_9;
  }

  v43 = 0;
LABEL_10:

  v22 = *MEMORY[0x1E69E9840];

  return v43;
}

- (id)entityTagsForIdentifiers:(id)identifiers options:(id)options error:(id *)error
{
  v75[1] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  optionsCopy = options;
  v9 = optionsCopy;
  if (self->inner)
  {
    v10 = [GDPersonEntityTaggingOptionsInner alloc];
    v37 = v9;
    tagThresholds = [v9 tagThresholds];
    v12 = [(GDPersonEntityTaggingOptionsInner *)v10 initWithTagNameThresholds:tagThresholds];

    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = sub_1ABAB0F34;
    v68 = sub_1ABAB27A0;
    v69 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = sub_1ABAB0F34;
    v62 = sub_1ABAB27A0;
    v63 = 0;
    v13 = dispatch_semaphore_create(0);
    inner = self->inner;
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = sub_1ABEE2CD0;
    v54[3] = &unk_1E7961EF8;
    v56 = &v64;
    v57 = &v58;
    v15 = v13;
    v55 = v15;
    v38 = v12;
    [(GDEntityTaggingServiceInner *)inner peopleEntityTagsFor:identifiersCopy options:v12 completionHandler:v54];
    v16 = v15;
    v17 = dispatch_time(0, 5000000000);
    v18 = dispatch_semaphore_wait(v16, v17);
    v36 = v16;

    if (v18)
    {
      if (error)
      {
        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v72 = *MEMORY[0x1E696A578];
        v73 = @"Timed out waiting for EntityTaggingService to return.";
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:{1, v16}];
        *error = [v19 initWithDomain:@"GDErrorDomain" code:14 userInfo:v20];
      }
    }

    else
    {
      if (v65[5])
      {
        v43 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        obj = v65[5];
        v42 = [obj countByEnumeratingWithState:&v50 objects:v71 count:{16, v16}];
        if (v42)
        {
          v41 = *v51;
          do
          {
            for (i = 0; i != v42; ++i)
            {
              if (*v51 != v41)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v50 + 1) + 8 * i);
              v25 = [v65[5] objectForKey:v24];
              v44 = v24;
              v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v48 = 0u;
              v49 = 0u;
              v46 = 0u;
              v47 = 0u;
              scoredPersonEntityTags = [v25 scoredPersonEntityTags];
              v28 = [scoredPersonEntityTags countByEnumeratingWithState:&v46 objects:v70 count:16];
              if (v28)
              {
                v29 = *v47;
                do
                {
                  for (j = 0; j != v28; ++j)
                  {
                    if (*v47 != v29)
                    {
                      objc_enumerationMutation(scoredPersonEntityTags);
                    }

                    v31 = *(*(&v46 + 1) + 8 * j);
                    v32 = [GDScoredPersonEntityTagType alloc];
                    gdTag = [v31 gdTag];
                    [v31 score];
                    v34 = [(GDScoredPersonEntityTagType *)v32 initWithTag:gdTag score:?];
                    [v26 addObject:v34];
                  }

                  v28 = [scoredPersonEntityTags countByEnumeratingWithState:&v46 objects:v70 count:16];
                }

                while (v28);
              }

              v35 = -[GDRankedPersonEntityTags initWithIDValue:scoredPersonEntityTags:entityRelevanceInferenceEventId:]([GDRankedPersonEntityTags alloc], "initWithIDValue:scoredPersonEntityTags:entityRelevanceInferenceEventId:", [v25 idValue], v26, objc_msgSend(v25, "inferenceEventIdValue"));
              [v43 setObject:v35 forKeyedSubscript:v44];
            }

            v42 = [obj countByEnumeratingWithState:&v50 objects:v71 count:16];
          }

          while (v42);
        }

        goto LABEL_6;
      }

      if (error)
      {
        v43 = 0;
        *error = v59[5];
        goto LABEL_6;
      }
    }

    v43 = 0;
LABEL_6:

    _Block_object_dispose(&v58, 8);
    _Block_object_dispose(&v64, 8);

LABEL_9:
    v9 = v37;
    goto LABEL_10;
  }

  if (error)
  {
    v37 = optionsCopy;
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v74 = *MEMORY[0x1E696A578];
    v75[0] = @"Error when initializing EntityTaggingService.";
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];
    v43 = 0;
    *error = [v21 initWithDomain:@"GDErrorDomain" code:1 userInfo:v38];
    goto LABEL_9;
  }

  v43 = 0;
LABEL_10:

  v22 = *MEMORY[0x1E69E9840];

  return v43;
}

- (id)entitiesForTag:(int64_t)tag options:(id)options error:(id *)error
{
  v62[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v9 = optionsCopy;
  if (self->inner)
  {
    v10 = [GDPersonEntityTaggingOptionsInner alloc];
    v36 = v9;
    tagThresholds = [v9 tagThresholds];
    v12 = [(GDPersonEntityTaggingOptionsInner *)v10 initWithTagNameThresholds:tagThresholds];

    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = sub_1ABAB0F34;
    v56 = sub_1ABAB27A0;
    v57 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = sub_1ABAB0F34;
    v50 = sub_1ABAB27A0;
    v51 = 0;
    v13 = dispatch_semaphore_create(0);
    inner = self->inner;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = sub_1ABEE3234;
    v42[3] = &unk_1E7961ED0;
    v44 = &v52;
    v45 = &v46;
    v15 = v13;
    v43 = v15;
    v37 = v12;
    [(GDEntityTaggingServiceInner *)inner entitiesForTagWithGdEntityTagType:tag options:v12 completionHandler:v42];
    v16 = v15;
    v17 = dispatch_time(0, 5000000000);
    v18 = dispatch_semaphore_wait(v16, v17);

    if (v18)
    {
      if (error)
      {
        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v59 = *MEMORY[0x1E696A578];
        v60 = @"Timed out waiting for EntityTaggingService to return.";
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        *error = [v19 initWithDomain:@"GDErrorDomain" code:14 userInfo:v20];
      }
    }

    else
    {
      if (v53[5])
      {
        v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        scoredEntities = [v53[5] scoredEntities];
        v25 = [scoredEntities countByEnumeratingWithState:&v38 objects:v58 count:16];
        if (v25)
        {
          v26 = *v39;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v39 != v26)
              {
                objc_enumerationMutation(scoredEntities);
              }

              v28 = *(*(&v38 + 1) + 8 * i);
              v29 = [GDScoredPersonEntity alloc];
              idValue = [v28 idValue];
              [v28 score];
              v31 = [(GDScoredPersonEntity *)v29 initWithIDValue:idValue score:?];
              [v23 addObject:v31];
            }

            v25 = [scoredEntities countByEnumeratingWithState:&v38 objects:v58 count:16];
          }

          while (v25);
        }

        v32 = [GDRankedEntityTagPersons alloc];
        gdTag = [v53[5] gdTag];
        v21 = -[GDRankedEntityTagPersons initWithTag:scoredEntities:entityRelevanceInferenceEventId:](v32, "initWithTag:scoredEntities:entityRelevanceInferenceEventId:", gdTag, v23, [v53[5] inferenceEventIdValue]);

        goto LABEL_20;
      }

      if (error)
      {
        v21 = 0;
        *error = v47[5];
        goto LABEL_20;
      }
    }

    v21 = 0;
LABEL_20:

    _Block_object_dispose(&v46, 8);
    _Block_object_dispose(&v52, 8);

    goto LABEL_21;
  }

  if (!error)
  {
    v21 = 0;
    goto LABEL_22;
  }

  v36 = optionsCopy;
  v22 = objc_alloc(MEMORY[0x1E696ABC0]);
  v61 = *MEMORY[0x1E696A578];
  v62[0] = @"Error when initializing EntityTaggingService.";
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
  v21 = 0;
  *error = [v22 initWithDomain:@"GDErrorDomain" code:1 userInfo:v37];
LABEL_21:

  v9 = v36;
LABEL_22:

  v34 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)entityTagsForIdentifier:(id)identifier options:(id)options error:(id *)error
{
  v64[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  optionsCopy = options;
  v38 = optionsCopy;
  if (self->inner)
  {
    v9 = optionsCopy;
    v10 = [GDPersonEntityTaggingOptionsInner alloc];
    tagThresholds = [v9 tagThresholds];
    v12 = [(GDPersonEntityTaggingOptionsInner *)v10 initWithTagNameThresholds:tagThresholds];

    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = sub_1ABAB0F34;
    v58 = sub_1ABAB27A0;
    v59 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = sub_1ABAB0F34;
    v52 = sub_1ABAB27A0;
    v53 = 0;
    v13 = dispatch_semaphore_create(0);
    inner = self->inner;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = sub_1ABEE37A4;
    v44[3] = &unk_1E7961EA8;
    v46 = &v54;
    v47 = &v48;
    v15 = v13;
    v45 = v15;
    v36 = v12;
    [(GDEntityTaggingServiceInner *)inner personEntityTagsFor:identifierCopy options:v12 completionHandler:v44];
    v16 = v15;
    v17 = dispatch_time(0, 5000000000);
    v18 = dispatch_semaphore_wait(v16, v17);

    if (v18)
    {
      if (error)
      {
        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v61 = *MEMORY[0x1E696A578];
        v62 = @"Timed out waiting for EntityTaggingService to return.";
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        *error = [v19 initWithDomain:@"GDErrorDomain" code:14 userInfo:v20];
      }
    }

    else
    {
      if (v55[5])
      {
        v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        scoredPersonEntityTags = [v55[5] scoredPersonEntityTags];
        v25 = [scoredPersonEntityTags countByEnumeratingWithState:&v40 objects:v60 count:16];
        if (v25)
        {
          v26 = *v41;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v41 != v26)
              {
                objc_enumerationMutation(scoredPersonEntityTags);
              }

              v28 = *(*(&v40 + 1) + 8 * i);
              v29 = [GDScoredPersonEntityTagType alloc];
              gdTag = [v28 gdTag];
              [v28 score];
              v31 = [(GDScoredPersonEntityTagType *)v29 initWithTag:gdTag score:?];
              [v23 addObject:v31];
            }

            v25 = [scoredPersonEntityTags countByEnumeratingWithState:&v40 objects:v60 count:16];
          }

          while (v25);
        }

        v32 = [GDRankedPersonEntityTags alloc];
        idValue = [v55[5] idValue];
        v21 = -[GDRankedPersonEntityTags initWithIDValue:scoredPersonEntityTags:entityRelevanceInferenceEventId:](v32, "initWithIDValue:scoredPersonEntityTags:entityRelevanceInferenceEventId:", idValue, v23, [v55[5] inferenceEventIdValue]);

        goto LABEL_20;
      }

      if (error)
      {
        v21 = 0;
        *error = v49[5];
LABEL_20:

        _Block_object_dispose(&v48, 8);
        _Block_object_dispose(&v54, 8);

        goto LABEL_22;
      }
    }

    v21 = 0;
    goto LABEL_20;
  }

  if (error)
  {
    v22 = objc_alloc(MEMORY[0x1E696ABC0]);
    v63 = *MEMORY[0x1E696A578];
    v64[0] = @"Error when initializing EntityTaggingService.";
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
    v21 = 0;
    *error = [v22 initWithDomain:@"GDErrorDomain" code:1 userInfo:v37];
  }

  else
  {
    v21 = 0;
  }

LABEL_22:

  v34 = *MEMORY[0x1E69E9840];

  return v21;
}

- (GDEntityTaggingService)initWithConfig:(id)config error:(id *)error
{
  v10.receiver = self;
  v10.super_class = GDEntityTaggingService;
  v5 = [(GDEntityTaggingService *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(GDEntityTagConfigurationInner);
    v7 = [[GDEntityTaggingServiceInner alloc] initWithEtConfig:v6 error:error];
    inner = v5->inner;
    v5->inner = v7;
  }

  return v5;
}

@end