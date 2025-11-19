@interface _HKGraphViewAxisAnnotationHandler
- (_HKGraphViewAxisAnnotationHandler)init;
- (int64_t)applyAnnotationForSeries:(id)a3;
- (void)_forceClearAxisAnnotations;
- (void)addAxisAnnotation:(id)a3 forSeries:(id)a4 modelCoordinate:(id)a5;
- (void)startAnnotationSequence;
@end

@implementation _HKGraphViewAxisAnnotationHandler

- (_HKGraphViewAxisAnnotationHandler)init
{
  v6.receiver = self;
  v6.super_class = _HKGraphViewAxisAnnotationHandler;
  v2 = [(_HKGraphViewAxisAnnotationHandler *)&v6 init];
  v3 = v2;
  if (v2)
  {
    seriesToAnnotations = v2->_seriesToAnnotations;
    v2->_seriesToAnnotations = 0;

    v3->_clearedPreviousAnnotations = 0;
  }

  return v3;
}

- (void)startAnnotationSequence
{
  seriesToAnnotations = self->_seriesToAnnotations;
  if (seriesToAnnotations)
  {
    [(_HKGraphViewAxisAnnotationHandler *)self clearAxisAnnotations];
    v4 = self->_seriesToAnnotations;
    LOBYTE(seriesToAnnotations) = 1;
  }

  else
  {
    v4 = 0;
  }

  self->_clearedPreviousAnnotations = seriesToAnnotations;
  self->_seriesToAnnotations = 0;
}

- (void)addAxisAnnotation:(id)a3 forSeries:(id)a4 modelCoordinate:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  seriesToAnnotations = self->_seriesToAnnotations;
  if (!seriesToAnnotations)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:5];
    v12 = self->_seriesToAnnotations;
    self->_seriesToAnnotations = v11;

    seriesToAnnotations = self->_seriesToAnnotations;
  }

  v13 = [(NSMapTable *)seriesToAnnotations objectForKey:v8];
  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMapTable *)self->_seriesToAnnotations setObject:v13 forKey:v8];
  }

  v14 = objc_alloc_init(_HKGraphViewAnnotationEntry);
  [(_HKGraphViewAnnotationEntry *)v14 setAnnotation:v15];
  [(_HKGraphViewAnnotationEntry *)v14 setModelCoordinate:v9];
  [v13 addObject:v14];
}

- (int64_t)applyAnnotationForSeries:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_seriesToAnnotations)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v32 = v4;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v50;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v50 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [*(*(&v49 + 1) + 8 * i) yAxis];
          if (([v5 containsObject:v10] & 1) == 0)
          {
            [v5 addObject:v10];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v7);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v33 = v5;
    v35 = [v33 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v35)
    {
      v34 = *v46;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v46 != v34)
          {
            objc_enumerationMutation(v33);
          }

          v12 = *(*(&v45 + 1) + 8 * j);
          v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v14 = obj;
          v15 = [v14 countByEnumeratingWithState:&v41 objects:v54 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v42;
            do
            {
              for (k = 0; k != v16; ++k)
              {
                if (*v42 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v41 + 1) + 8 * k);
                v20 = [v19 yAxis];

                if (v20 == v12)
                {
                  v21 = [(NSMapTable *)self->_seriesToAnnotations objectForKey:v19];
                  [v13 addObjectsFromArray:v21];
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v41 objects:v54 count:16];
            }

            while (v16);
          }

          [v12 clearAnnotations];
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v22 = v13;
          v23 = [v22 countByEnumeratingWithState:&v37 objects:v53 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v38;
            do
            {
              for (m = 0; m != v24; ++m)
              {
                if (*v38 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v37 + 1) + 8 * m);
                v28 = [v27 annotation];
                v29 = [v27 modelCoordinate];
                [v12 addAxisAnnotation:v28 modelCoordinate:v29];
              }

              v24 = [v22 countByEnumeratingWithState:&v37 objects:v53 count:16];
            }

            while (v24);
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v35);
    }

    v30 = 1;
    v4 = v32;
  }

  else if (self->_clearedPreviousAnnotations)
  {
    v30 = 2;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (void)_forceClearAxisAnnotations
{
  v14 = *MEMORY[0x1E69E9840];
  seriesToAnnotations = self->_seriesToAnnotations;
  if (seriesToAnnotations)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = seriesToAnnotations;
    v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v9 + 1) + 8 * v7) yAxis];
          [v8 clearAnnotations];

          ++v7;
        }

        while (v5 != v7);
        v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

@end