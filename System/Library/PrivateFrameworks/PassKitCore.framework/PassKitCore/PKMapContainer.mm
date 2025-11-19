@interface PKMapContainer
- (PKMapContainer)init;
- (PKMapContainer)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)removeAllObjects;
- (void)updateWithContainer:(id)a3;
@end

@implementation PKMapContainer

- (PKMapContainer)init
{
  v9.receiver = self;
  v9.super_class = PKMapContainer;
  v2 = [(PKMapContainer *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_version = 2;
    v4 = [MEMORY[0x1E695DF90] dictionary];
    recipientMap = v3->_recipientMap;
    v3->_recipientMap = v4;

    v6 = [MEMORY[0x1E695DF90] dictionary];
    scoreMap = v3->_scoreMap;
    v3->_scoreMap = v6;
  }

  return v3;
}

- (PKMapContainer)initWithCoder:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = PKMapContainer;
  v5 = [(PKMapContainer *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeIntegerForKey:@"version"];
    v5->_version = v6;
    if (v6 == 2)
    {
      v7 = MEMORY[0x1E695DFD8];
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
      v11 = [v4 decodeObjectOfClasses:v10 forKey:@"recipientMap"];
      recipientMap = v5->_recipientMap;
      v5->_recipientMap = v11;

      v13 = MEMORY[0x1E695DFD8];
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
      v17 = [v4 decodeObjectOfClasses:v16 forKey:@"scoreMap"];
      scoreMap = v5->_scoreMap;
      v5->_scoreMap = v17;
    }

    else
    {
      v19 = v6;
      v10 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v27 = v19;
        v28 = 2048;
        v29 = 2;
        _os_log_error_impl(&dword_1AD337000, v10, OS_LOG_TYPE_ERROR, "Archive version (%li) does not match current version (%li). Ignoring map values.", buf, 0x16u);
      }
    }

    if (!v5->_recipientMap)
    {
      v20 = [MEMORY[0x1E695DF90] dictionary];
      v21 = v5->_recipientMap;
      v5->_recipientMap = v20;
    }

    if (!v5->_scoreMap)
    {
      v22 = [MEMORY[0x1E695DF90] dictionary];
      v23 = v5->_scoreMap;
      v5->_scoreMap = v22;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:2 forKey:@"version"];
  [v4 encodeObject:self->_recipientMap forKey:@"recipientMap"];
  [v4 encodeObject:self->_scoreMap forKey:@"scoreMap"];
}

- (void)updateWithContainer:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 version] == 2)
  {
    v5 = [v4 recipientMap];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v6 = [v5 allKeys];
    v7 = [v6 countByEnumeratingWithState:&v55 objects:v62 count:16];
    v40 = v4;
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v56;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v56 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v55 + 1) + 8 * i);
          v13 = [v5 objectForKey:v12, v40];
          if ([v13 hasExpired])
          {
            [v5 removeObjectForKey:v12];
          }

          else
          {
            v14 = [(NSMutableDictionary *)self->_recipientMap objectForKey:v12];
            v15 = v14;
            if (v14 && [v14 isNewerThan:v13])
            {
              [v5 removeObjectForKey:v12];
            }

            else
            {
              ++v9;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v55 objects:v62 count:16];
      }

      while (v8);

      v4 = v40;
      if (!v9)
      {
LABEL_27:
        v23 = [v4 scoreMap];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v24 = [v23 allKeys];
        v25 = [v24 countByEnumeratingWithState:&v47 objects:v60 count:16];
        if (v25)
        {
          v26 = v25;
          v42 = 0;
          v27 = *v48;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v48 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v47 + 1) + 8 * j);
              v30 = [v23 objectForKey:v29];
              if ([v30 hasExpired])
              {
                [v23 removeObjectForKey:v29];
              }

              else
              {
                v31 = [(NSMutableDictionary *)self->_scoreMap objectForKey:v29];
                v32 = v31;
                if (v31 && [v31 isNewerThan:v30])
                {
                  [v23 removeObjectForKey:v29];
                }

                else
                {
                  ++v42;
                }
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v47 objects:v60 count:16];
          }

          while (v26);

          v4 = v41;
          if (!v42)
          {
            goto LABEL_52;
          }

          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v33 = [v23 allKeys];
          v34 = [v33 countByEnumeratingWithState:&v43 objects:v59 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v44;
            do
            {
              for (k = 0; k != v35; ++k)
              {
                if (*v44 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                v38 = *(*(&v43 + 1) + 8 * k);
                v39 = [v23 objectForKey:v38];
                [(NSMutableDictionary *)self->_scoreMap setObject:v39 forKey:v38];
              }

              v35 = [v33 countByEnumeratingWithState:&v43 objects:v59 count:16];
            }

            while (v35);
          }

          v24 = PKLogFacilityTypeGetObject(0xCuLL);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v64 = v42;
            _os_log_debug_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEBUG, "Loaded %lu new cached score submission dates.", buf, 0xCu);
          }
        }

LABEL_52:
        goto LABEL_55;
      }

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v16 = [v5 allKeys];
      v17 = [v16 countByEnumeratingWithState:&v51 objects:v61 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v52;
        do
        {
          for (m = 0; m != v18; ++m)
          {
            if (*v52 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v51 + 1) + 8 * m);
            v22 = [v5 objectForKey:v21];
            [(NSMutableDictionary *)self->_recipientMap setObject:v22 forKey:v21];
          }

          v18 = [v16 countByEnumeratingWithState:&v51 objects:v61 count:16];
        }

        while (v18);
      }

      v6 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v64 = v9;
        _os_log_debug_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEBUG, "Loaded %lu new cached recipients.", buf, 0xCu);
      }
    }

    goto LABEL_27;
  }

  v5 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v64 = [v4 version];
    v65 = 2048;
    v66 = 2;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_INFO, "Refusing to update map container with container (version %li) that does not match current version (%li).", buf, 0x16u);
  }

LABEL_55:
}

- (void)removeAllObjects
{
  [(NSMutableDictionary *)self->_recipientMap removeAllObjects];
  scoreMap = self->_scoreMap;

  [(NSMutableDictionary *)scoreMap removeAllObjects];
}

@end