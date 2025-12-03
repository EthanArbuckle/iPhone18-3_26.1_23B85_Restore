@interface CRKASMCollidingCourseFilter
+ (id)coursesByFilteringCollidingCoursesFromArray:(id)array;
@end

@implementation CRKASMCollidingCourseFilter

+ (id)coursesByFilteringCollidingCoursesFromArray:(id)array
{
  v32[2] = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"identifier.stringValue" ascending:1];
  v32[0] = v4;
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1];
  v32[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v23 = arrayCopy;
  v7 = [arrayCopy sortedArrayUsingDescriptors:v6];

  v24 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        identifier = [v14 identifier];
        if (identifier | v11 && (v16 = identifier, [v14 identifier], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqual:", v11), v17, v16, (v18 & 1) == 0))
        {
          [v24 addObject:v14];
          identifier2 = [v14 identifier];

          v11 = identifier2;
        }

        else
        {
          if (_CRKLogASM_onceToken_0 != -1)
          {
            +[CRKASMCollidingCourseFilter coursesByFilteringCollidingCoursesFromArray:];
          }

          v19 = _CRKLogASM_logObj_0;
          if (os_log_type_enabled(_CRKLogASM_logObj_0, OS_LOG_TYPE_ERROR))
          {
            [(CRKASMCollidingCourseFilter *)v29 coursesByFilteringCollidingCoursesFromArray:v19, v14, &v30];
          }
        }

        ++v13;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v21 = [v24 copy];

  return v21;
}

+ (void)coursesByFilteringCollidingCoursesFromArray:(void *)a3 .cold.2(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 name];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_error_impl(&dword_243550000, v7, OS_LOG_TYPE_ERROR, "Found ClassKit class with colliding identifier. Not vending it. Class name: %@", a1, 0xCu);
}

@end