@interface CRDisplayThemeData
- (BOOL)isEqual:(id)a3;
- (CRDisplayThemeData)initWithCoder:(id)a3;
- (CRDisplayThemeData)initWithCurrentLayoutID:(id)a3 paletteIDForLayout:(id)a4 wallpaperForLayout:(id)a5 homeScreenStyleForLayout:(id)a6;
- (CRDisplayThemeData)initWithDictionary:(id)a3;
- (CRDisplayThemeData)themeDataWithCurrentHomeScreenStyle:(id)a3;
- (CRDisplayThemeData)themeDataWithCurrentLayoutID:(id)a3;
- (CRDisplayThemeData)themeDataWithCurrentPaletteID:(id)a3;
- (CRDisplayThemeData)themeDataWithCurrentWallpaper:(id)a3;
- (CRHomeScreenStyleData)currentHomeScreenStyle;
- (CRWallpaperData)currentWallpaper;
- (NSString)currentPaletteID;
- (id)asDictionary;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRDisplayThemeData

- (CRDisplayThemeData)initWithCurrentLayoutID:(id)a3 paletteIDForLayout:(id)a4 wallpaperForLayout:(id)a5 homeScreenStyleForLayout:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = CRDisplayThemeData;
  v14 = [(CRDisplayThemeData *)&v26 init];
  if (v14)
  {
    v15 = [v10 copy];
    currentLayoutID = v14->_currentLayoutID;
    v14->_currentLayoutID = v15;

    v17 = [v11 copy];
    paletteIDForLayout = v14->_paletteIDForLayout;
    v14->_paletteIDForLayout = v17;

    v19 = [v12 copy];
    wallpaperForLayout = v14->_wallpaperForLayout;
    v14->_wallpaperForLayout = v19;

    v21 = [v13 copy];
    homeScreenStyleForLayout = v14->_homeScreenStyleForLayout;
    v14->_homeScreenStyleForLayout = v21;

    v23 = [v12 objectForKeyedSubscript:v10];

    if (!v23)
    {
      v24 = CarGeneralLogging();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        [CRDisplayThemeData initWithCurrentLayoutID:v10 paletteIDForLayout:v12 wallpaperForLayout:v24 homeScreenStyleForLayout:?];
      }
    }
  }

  return v14;
}

- (CRDisplayThemeData)initWithDictionary:(id)a3
{
  v99 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKey:@"currentLayoutID"];
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v74 = v5;
  }

  else
  {
    v74 = 0;
  }

  objc_opt_class();
  v6 = [v4 objectForKey:@"paletteIDForLayout"];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  objc_opt_class();
  v8 = [v4 objectForKey:@"wallpaperForLayout"];
  if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v79 = v8;
  }

  else
  {
    v79 = 0;
  }

  objc_opt_class();
  v9 = [v4 objectForKey:@"homeScreenStyleForLayout"];
  if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v77 = v9;
  }

  else
  {
    v77 = 0;
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v88 objects:v98 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v89;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v89 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v88 + 1) + 8 * i);
        objc_opt_class();
        v16 = v15;
        if (!v16 || (objc_opt_isKindOfClass() & 1) == 0)
        {

LABEL_72:
          v19 = CarGeneralLogging();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v49 = v74;
            if (v16)
            {
              v56 = objc_opt_class();
              v54 = NSStringFromClass(v56);
              v57 = objc_opt_class();
              v55 = NSStringFromClass(v57);
            }

            else
            {
              v54 = @"nil";
              v55 = @"nil";
            }

            *buf = 138412546;
            v95 = v54;
            v96 = 2112;
            v97 = v55;
            _os_log_error_impl(&dword_1C81FC000, v19, OS_LOG_TYPE_ERROR, "Invalid palette ID, expected strings, found: %@:%@", buf, 0x16u);
            if (v16)
            {
            }

            v51 = 0;
            v50 = v10;
          }

          else
          {
            v51 = 0;
            v50 = v10;
            v49 = v74;
          }

          goto LABEL_91;
        }

        objc_opt_class();
        v17 = [v10 objectForKey:v16];
        if (v17 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        if (!v18)
        {
          goto LABEL_72;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v88 objects:v98 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v78 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v19 = v79;
  v72 = [v19 countByEnumeratingWithState:&v84 objects:v93 count:16];
  if (v72)
  {
    obj = *v85;
    v69 = v4;
    v71 = v19;
    v67 = self;
    while (2)
    {
      for (j = 0; j != v72; ++j)
      {
        if (*v85 != obj)
        {
          objc_enumerationMutation(v19);
        }

        v21 = *(*(&v84 + 1) + 8 * j);
        v22 = [v19 objectForKey:v21];
        objc_opt_class();
        v23 = v21;
        if (!v23 || (objc_opt_isKindOfClass() & 1) == 0)
        {

LABEL_75:
          v27 = CarGeneralLogging();
          if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v49 = v74;
            goto LABEL_80;
          }

          v49 = v74;
          v50 = v78;
          if (v23)
          {
            v61 = objc_opt_class();
            v59 = NSStringFromClass(v61);
          }

          else
          {
            v59 = @"nil";
          }

          if (v22)
          {
            v63 = objc_opt_class();
            v62 = NSStringFromClass(v63);
          }

          else
          {
            v62 = @"nil";
          }

          *buf = 138412546;
          v95 = v59;
          v96 = 2112;
          v97 = v62;
          _os_log_error_impl(&dword_1C81FC000, v27, OS_LOG_TYPE_ERROR, "Invalid palette ID, expected string:dictionary, found: %@:%@", buf, 0x16u);
          if (v22)
          {
          }

          if (v23)
          {
          }

LABEL_81:

          v51 = 0;
          self = v67;
          v4 = v69;
          goto LABEL_91;
        }

        objc_opt_class();
        v24 = v22;
        if (v24 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        if (!v25)
        {
          goto LABEL_75;
        }

        objc_opt_class();
        v26 = [v24 objectForKey:@"type"];
        if (v26 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        objc_opt_class();
        v28 = [v24 objectForKey:@"data"];
        if (v28 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v29 = v28;
        }

        else
        {
          v29 = 0;
        }

        v30 = off_1E82FB708;
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = [v27 isEqualToString:v32];

        if ((v33 & 1) == 0 && (v30 = off_1E82FB770, v34 = objc_opt_class(), NSStringFromClass(v34), v35 = objc_claimAutoreleasedReturnValue(), v36 = -[NSObject isEqualToString:](v27, "isEqualToString:", v35), v35, !v36) || (v37 = [objc_alloc(*v30) initWithDictionary:v29]) == 0)
        {
          v52 = CarGeneralLogging();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            [(CRDisplayThemeData *)v23 initWithDictionary:v29, v52];
          }

          v49 = v74;
          v19 = v71;
LABEL_80:
          v50 = v78;
          goto LABEL_81;
        }

        v38 = v37;
        [v78 setObject:v37 forKey:v23];

        v19 = v71;
      }

      self = v67;
      v4 = v69;
      v72 = [v71 countByEnumeratingWithState:&v84 objects:v93 count:16];
      if (v72)
      {
        continue;
      }

      break;
    }
  }

  v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v77, "count")}];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obja = v77;
  v39 = [obja countByEnumeratingWithState:&v80 objects:v92 count:16];
  if (v39)
  {
    v40 = v39;
    v73 = *v81;
    v68 = self;
    v70 = v4;
    while (2)
    {
      for (k = 0; k != v40; ++k)
      {
        v42 = v19;
        if (*v81 != v73)
        {
          objc_enumerationMutation(obja);
        }

        v43 = *(*(&v80 + 1) + 8 * k);
        v44 = [obja objectForKey:v43];
        objc_opt_class();
        v45 = v43;
        if (!v45 || (objc_opt_isKindOfClass() & 1) == 0)
        {

LABEL_83:
          v53 = CarGeneralLogging();
          self = v68;
          v4 = v70;
          v49 = v74;
          v50 = v78;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            if (v45)
            {
              v64 = objc_opt_class();
              v60 = NSStringFromClass(v64);
            }

            else
            {
              v60 = @"nil";
            }

            if (v44)
            {
              v66 = objc_opt_class();
              v65 = NSStringFromClass(v66);
            }

            else
            {
              v65 = @"nil";
            }

            *buf = 138412546;
            v95 = v60;
            v96 = 2112;
            v97 = v65;
            _os_log_error_impl(&dword_1C81FC000, v53, OS_LOG_TYPE_ERROR, "Invalid palette ID, expected string:data, found: %@:%@", buf, 0x16u);
            if (v44)
            {
            }

            if (v45)
            {
            }

            self = v68;
            v4 = v70;
          }

          v51 = 0;
          v19 = v42;
          goto LABEL_91;
        }

        objc_opt_class();
        v46 = v44;
        if (v46 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v47 = v46;
        }

        else
        {
          v47 = 0;
        }

        if (!v47)
        {
          goto LABEL_83;
        }

        v48 = [[CRHomeScreenStyleData alloc] initWithDictionary:v46];
        v19 = v42;
        [v42 setObject:v48 forKey:v45];
      }

      v40 = [obja countByEnumeratingWithState:&v80 objects:v92 count:16];
      self = v68;
      v4 = v70;
      if (v40)
      {
        continue;
      }

      break;
    }
  }

  v49 = v74;
  v50 = v78;
  self = [(CRDisplayThemeData *)self initWithCurrentLayoutID:v74 paletteIDForLayout:v10 wallpaperForLayout:v78 homeScreenStyleForLayout:v19];
  v51 = self;
LABEL_91:

  return v51;
}

- (id)asDictionary
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(CRDisplayThemeData *)self currentLayoutID];
  if (v4 && (v5 = v4, [(CRDisplayThemeData *)self paletteIDForLayout], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [(CRDisplayThemeData *)self currentLayoutID];
    [v3 setObject:v7 forKey:@"currentLayoutID"];

    v8 = [(CRDisplayThemeData *)self paletteIDForLayout];
    v33 = v3;
    [v3 setObject:v8 forKey:@"paletteIDForLayout"];

    v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = [(CRDisplayThemeData *)self wallpaperForLayout];
    v9 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v41;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v40 + 1) + 8 * i);
          v14 = [(CRDisplayThemeData *)self wallpaperForLayout];
          v15 = [v14 objectForKey:v13];

          v16 = [v15 asDictionary];
          if (!v16)
          {

LABEL_23:
            v31 = 0;
            v3 = v33;
            goto LABEL_24;
          }

          v17 = v16;
          v45[0] = @"type";
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          v45[1] = @"data";
          v46[0] = v19;
          v46[1] = v17;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
          [v35 setObject:v20 forKeyedSubscript:v13];
        }

        v10 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    [v33 setObject:v35 forKey:@"wallpaperForLayout"];
    obj = objc_alloc_init(MEMORY[0x1E695DF90]);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v21 = [(CRDisplayThemeData *)self homeScreenStyleForLayout];
    v22 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v37;
      while (2)
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v37 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v36 + 1) + 8 * j);
          v27 = [(CRDisplayThemeData *)self homeScreenStyleForLayout];
          v28 = [v27 objectForKey:v26];

          v29 = [v28 asDictionary];
          if (!v29)
          {

            goto LABEL_23;
          }

          v30 = v29;
          [obj setObject:v29 forKeyedSubscript:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v3 = v33;
    [v33 setObject:obj forKey:@"homeScreenStyleForLayout"];
    v31 = [v33 copy];
LABEL_24:
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (CRDisplayThemeData)themeDataWithCurrentLayoutID:(id)a3
{
  v4 = a3;
  v5 = [CRDisplayThemeData alloc];
  v6 = [(CRDisplayThemeData *)self paletteIDForLayout];
  v7 = [(CRDisplayThemeData *)self wallpaperForLayout];
  v8 = [(CRDisplayThemeData *)self homeScreenStyleForLayout];
  v9 = [(CRDisplayThemeData *)v5 initWithCurrentLayoutID:v4 paletteIDForLayout:v6 wallpaperForLayout:v7 homeScreenStyleForLayout:v8];

  return v9;
}

- (CRDisplayThemeData)themeDataWithCurrentPaletteID:(id)a3
{
  v4 = a3;
  v5 = [(CRDisplayThemeData *)self paletteIDForLayout];
  v6 = [v5 mutableCopy];

  v7 = [(CRDisplayThemeData *)self currentLayoutID];
  [v6 setObject:v4 forKeyedSubscript:v7];

  v8 = [CRDisplayThemeData alloc];
  v9 = [(CRDisplayThemeData *)self currentLayoutID];
  v10 = [(CRDisplayThemeData *)self wallpaperForLayout];
  v11 = [(CRDisplayThemeData *)self homeScreenStyleForLayout];
  v12 = [(CRDisplayThemeData *)v8 initWithCurrentLayoutID:v9 paletteIDForLayout:v6 wallpaperForLayout:v10 homeScreenStyleForLayout:v11];

  return v12;
}

- (CRDisplayThemeData)themeDataWithCurrentWallpaper:(id)a3
{
  v4 = a3;
  v5 = [(CRDisplayThemeData *)self wallpaperForLayout];
  v6 = [v5 mutableCopy];

  v7 = [(CRDisplayThemeData *)self currentLayoutID];
  [v6 setObject:v4 forKeyedSubscript:v7];

  v8 = [CRDisplayThemeData alloc];
  v9 = [(CRDisplayThemeData *)self currentLayoutID];
  v10 = [(CRDisplayThemeData *)self paletteIDForLayout];
  v11 = [(CRDisplayThemeData *)self homeScreenStyleForLayout];
  v12 = [(CRDisplayThemeData *)v8 initWithCurrentLayoutID:v9 paletteIDForLayout:v10 wallpaperForLayout:v6 homeScreenStyleForLayout:v11];

  return v12;
}

- (CRDisplayThemeData)themeDataWithCurrentHomeScreenStyle:(id)a3
{
  v4 = a3;
  v5 = [(CRDisplayThemeData *)self homeScreenStyleForLayout];
  v6 = [v5 mutableCopy];

  v7 = [(CRDisplayThemeData *)self currentLayoutID];
  [v6 setObject:v4 forKeyedSubscript:v7];

  v8 = [CRDisplayThemeData alloc];
  v9 = [(CRDisplayThemeData *)self currentLayoutID];
  v10 = [(CRDisplayThemeData *)self paletteIDForLayout];
  v11 = [(CRDisplayThemeData *)self wallpaperForLayout];
  v12 = [(CRDisplayThemeData *)v8 initWithCurrentLayoutID:v9 paletteIDForLayout:v10 wallpaperForLayout:v11 homeScreenStyleForLayout:v6];

  return v12;
}

- (NSString)currentPaletteID
{
  v3 = [(CRDisplayThemeData *)self paletteIDForLayout];
  v4 = [(CRDisplayThemeData *)self currentLayoutID];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    [CRDisplayThemeData currentPaletteID];
  }

  return v5;
}

- (CRWallpaperData)currentWallpaper
{
  v3 = [(CRDisplayThemeData *)self wallpaperForLayout];
  v4 = [(CRDisplayThemeData *)self currentLayoutID];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    [CRDisplayThemeData currentWallpaper];
  }

  return v5;
}

- (CRHomeScreenStyleData)currentHomeScreenStyle
{
  v3 = [(CRDisplayThemeData *)self homeScreenStyleForLayout];
  v4 = [(CRDisplayThemeData *)self currentLayoutID];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    [CRDisplayThemeData currentHomeScreenStyle];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = [(CRDisplayThemeData *)self currentLayoutID];
    v7 = [v5 currentLayoutID];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(CRDisplayThemeData *)self paletteIDForLayout];
      v9 = [v5 paletteIDForLayout];
      if ([v8 isEqualToDictionary:v9])
      {
        v10 = [(CRDisplayThemeData *)self wallpaperForLayout];
        v11 = [v5 wallpaperForLayout];
        if ([v10 isEqualToDictionary:v11])
        {
          v12 = [(CRDisplayThemeData *)self homeScreenStyleForLayout];
          v13 = [v5 homeScreenStyleForLayout];
          v14 = [v12 isEqualToDictionary:v13];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CRDisplayThemeData;
  v4 = [(CRDisplayThemeData *)&v11 description];
  v5 = [(CRDisplayThemeData *)self currentLayoutID];
  v6 = [(CRDisplayThemeData *)self paletteIDForLayout];
  v7 = [(CRDisplayThemeData *)self wallpaperForLayout];
  v8 = [(CRDisplayThemeData *)self homeScreenStyleForLayout];
  v9 = [v3 stringWithFormat:@"%@ {currentLayoutID: %@ paletteIDForLayout: %@ wallpaperForLayout: %@ homeScreenStyleForLayout: %@}", v4, v5, v6, v7, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRDisplayThemeData *)self currentLayoutID];
  [v4 encodeObject:v5 forKey:@"currentLayoutID"];

  v6 = [(CRDisplayThemeData *)self paletteIDForLayout];
  [v4 encodeObject:v6 forKey:@"paletteIDForLayout"];

  v7 = [(CRDisplayThemeData *)self wallpaperForLayout];
  [v4 encodeObject:v7 forKey:@"wallpaperForLayout"];

  v8 = [(CRDisplayThemeData *)self homeScreenStyleForLayout];
  [v4 encodeObject:v8 forKey:@"homeScreenStyleForLayout"];
}

- (CRDisplayThemeData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentLayoutID"];
  v6 = objc_opt_class();
  v7 = [v4 decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"paletteIDForLayout"];
  v8 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v4 decodeDictionaryWithKeysOfClasses:v8 objectsOfClasses:v11 forKey:@"wallpaperForLayout"];

  v13 = objc_opt_class();
  v14 = [v4 decodeDictionaryWithKeysOfClass:v13 objectsOfClass:objc_opt_class() forKey:@"homeScreenStyleForLayout"];

  v15 = 0;
  if (v5 && v7 && v12)
  {
    self = [(CRDisplayThemeData *)self initWithCurrentLayoutID:v5 paletteIDForLayout:v7 wallpaperForLayout:v12 homeScreenStyleForLayout:v14];
    v15 = self;
  }

  return v15;
}

- (void)initWithCurrentLayoutID:(NSObject *)a3 paletteIDForLayout:wallpaperForLayout:homeScreenStyleForLayout:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a2 allKeys];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_fault_impl(&dword_1C81FC000, a3, OS_LOG_TYPE_FAULT, "Unknown wallpaper for layout: %@. Wallpapers are available for layouts: %@", &v6, 0x16u);
}

- (void)initWithDictionary:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1C81FC000, log, OS_LOG_TYPE_ERROR, "Failed to initialize wallpaper, %@, from data: %@", &v3, 0x16u);
}

@end