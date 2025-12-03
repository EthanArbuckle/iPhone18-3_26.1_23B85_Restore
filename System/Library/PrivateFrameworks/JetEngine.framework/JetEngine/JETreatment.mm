@interface JETreatment
+ (id)treatmentWithConfiguration:(id)configuration topic:(id)topic;
- (JETreatment)initWithConfigDictionary:(id)dictionary topic:(id)topic;
- (id)performTreatment:(id)treatment;
@end

@implementation JETreatment

+ (id)treatmentWithConfiguration:(id)configuration topic:(id)topic
{
  configurationCopy = configuration;
  topicCopy = topic;
  v7 = configurationCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = [[JETreatment alloc] initWithConfigDictionary:v8 topic:topicCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (JETreatment)initWithConfigDictionary:(id)dictionary topic:(id)topic
{
  dictionaryCopy = dictionary;
  topicCopy = topic;
  v28.receiver = self;
  v28.super_class = JETreatment;
  v8 = [(JETreatment *)&v28 init];
  if (v8)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"filters"];
    v10 = [JEMetricsDataPredicate predicateWithConfiguration:v9];
    predicate = v8->_predicate;
    v8->_predicate = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"eventActions"];
    v13 = [JETreatmentAction treatmentActionWithField:0 configuration:v12 topic:topicCopy];
    eventAction = v8->_eventAction;
    v8->_eventAction = v13;

    v15 = [dictionaryCopy objectForKeyedSubscript:@"fieldActions"];
    objc_opt_class();
    v16 = 0;
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    if (v16)
    {
      v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v16, "count")}];
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __46__JETreatment_initWithConfigDictionary_topic___block_invoke;
      v25 = &unk_1E794A930;
      v26 = topicCopy;
      v27 = v17;
      v18 = v17;
      [v16 enumerateKeysAndObjectsUsingBlock:&v22];
      v19 = [v18 copy];
      fieldActions = v8->_fieldActions;
      v8->_fieldActions = v19;
    }
  }

  return v8;
}

void __46__JETreatment_initWithConfigDictionary_topic___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [JETreatmentAction treatmentActionWithField:"treatmentActionWithField:configuration:topic:" configuration:? topic:?];
  if (v3)
  {
    [*(a1 + 40) setObject:v3 forKeyedSubscript:v4];
  }
}

- (id)performTreatment:(id)treatment
{
  v37 = *MEMORY[0x1E69E9840];
  treatmentCopy = treatment;
  v5 = [[JETreatmentContext alloc] initWithTreatment:self metrics:treatmentCopy];
  if (self)
  {
    v6 = self->_predicate;
    if (v6)
    {
      v7 = v6;
      v8 = [(JEMetricsDataPredicate *)self->_predicate evaluateWithMetricsData:treatmentCopy];

      if (!v8)
      {
        goto LABEL_29;
      }
    }

    if (self->_eventAction)
    {
      [(JETreatmentAction *)self->_eventAction performActionWithContext:v5];
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  if (self)
  {
    fieldActions = self->_fieldActions;
  }

  else
  {
    fieldActions = 0;
  }

  objectEnumerator = [(NSDictionary *)fieldActions objectEnumerator];
  v11 = [objectEnumerator countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        sourceField = [(JETreatmentAction *)v15 sourceField];

        if (sourceField)
        {
          [v15 performActionWithContext:v5];
        }
      }

      v12 = [objectEnumerator countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v12);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  if (self)
  {
    v17 = self->_fieldActions;
  }

  else
  {
    v17 = 0;
  }

  objectEnumerator2 = [(NSDictionary *)v17 objectEnumerator];
  v19 = [objectEnumerator2 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(objectEnumerator2);
        }

        v23 = *(*(&v27 + 1) + 8 * j);
        sourceField2 = [(JETreatmentAction *)v23 sourceField];

        if (!sourceField2)
        {
          [v23 performActionWithContext:v5];
        }
      }

      v20 = [objectEnumerator2 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v20);
  }

LABEL_29:
  metrics = [(JETreatmentContext *)v5 metrics];

  return metrics;
}

@end