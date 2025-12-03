@interface NSArray(MRAdditions)
- (id)changeDescriptionTo:()MRAdditions keyBlock:isUpdatedBlock:descriptionBlock:;
- (id)mr_compactMap:()MRAdditions;
- (id)mr_filter:()MRAdditions;
- (id)mr_first:()MRAdditions;
- (id)mr_flatMap:()MRAdditions;
- (id)mr_map:()MRAdditions;
- (uint64_t)mr_all:()MRAdditions;
- (uint64_t)mr_any:()MRAdditions;
- (uint64_t)mr_containsAnyOf:()MRAdditions;
@end

@implementation NSArray(MRAdditions)

- (uint64_t)mr_any:()MRAdditions
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        if (v4[2](v4, *(*(&v11 + 1) + 8 * i)))
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (uint64_t)mr_all:()MRAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        if (!v4[2](v4, *(*(&v13 + 1) + 8 * v9)))
        {
          v10 = 0;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)mr_first:()MRAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (uint64_t)mr_containsAnyOf:()MRAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([self containsObject:{*(*(&v12 + 1) + 8 * v8), v12}])
        {
          v9 = 1;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)mr_filter:()MRAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          [v5 addObject:{v11, v14}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)mr_map:()MRAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 addObjectsFromArray:v11];
        }

        else if (v11)
        {
          [v5 addObject:{v11, v14}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)mr_flatMap:()MRAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObjectsFromArray:{v11, v14}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)mr_compactMap:()MRAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObject:{v11, v14}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)changeDescriptionTo:()MRAdditions keyBlock:isUpdatedBlock:descriptionBlock:
{
  v119 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v71 = a5;
  v72 = a6;
  v12 = [self count];
  if (v12 <= [v10 count])
  {
    selfCopy = v10;
  }

  else
  {
    selfCopy = self;
  }

  v14 = [selfCopy count];
  v70 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
  v69 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
  v68 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14];
  v76 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = self;
  v16 = [obj countByEnumeratingWithState:&v108 objects:v118 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v109;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v109 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v11[2](v11, *(*(&v108 + 1) + 8 * i));
        if (!v20)
        {
          v74 = _MRLogForCategory(0);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            [NSArray(MRAdditions) changeDescriptionTo:v72 keyBlock:? isUpdatedBlock:? descriptionBlock:?];
          }

          v40 = 0;
          goto LABEL_67;
        }

        v21 = v20;
        [v76 addObject:v20];
      }

      v17 = [obj countByEnumeratingWithState:&v108 objects:v118 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  obj = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:obj forKeys:v76];
  v74 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v73 = v10;
  v22 = [v73 countByEnumeratingWithState:&v104 objects:v117 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v105;
    while (2)
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v105 != v24)
        {
          objc_enumerationMutation(v73);
        }

        v26 = v11[2](v11, *(*(&v104 + 1) + 8 * j));
        if (!v26)
        {
          v61 = _MRLogForCategory(0);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            [NSArray(MRAdditions) changeDescriptionTo:v72 keyBlock:? isUpdatedBlock:? descriptionBlock:?];
          }

          v40 = 0;
          goto LABEL_66;
        }

        v27 = v26;
        [v74 addObject:v26];
      }

      v23 = [v73 countByEnumeratingWithState:&v104 objects:v117 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  v66 = v11;

  v28 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:v73 forKeys:v74];
  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 3221225472;
  v97[2] = __85__NSArray_MRAdditions__changeDescriptionTo_keyBlock_isUpdatedBlock_descriptionBlock___block_invoke;
  v97[3] = &unk_1E76A37A0;
  v29 = obj;
  v98 = v29;
  v102 = v71;
  v67 = v68;
  v99 = v67;
  v30 = v72;
  v103 = v30;
  v64 = v69;
  v100 = v64;
  v65 = v70;
  v101 = v65;
  v73 = v28;
  [v28 enumerateKeysAndObjectsUsingBlock:v97];
  v31 = [MEMORY[0x1E695DFA8] setWithArray:v76];
  v32 = [MEMORY[0x1E695DFD8] setWithArray:v74];
  [v31 minusSet:v32];

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v33 = v31;
  v34 = [v33 countByEnumeratingWithState:&v93 objects:v116 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v94;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v94 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = [v29 objectForKeyedSubscript:*(*(&v93 + 1) + 8 * k)];
        v39 = (*(v30 + 2))(v30, v38);
        [v15 addObject:v39];
      }

      v35 = [v33 countByEnumeratingWithState:&v93 objects:v116 count:16];
    }

    while (v35);
  }

  if ([v67 count] || objc_msgSend(v65, "count") || objc_msgSend(v15, "count"))
  {
    v40 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v41 = v65;
    v42 = [v41 countByEnumeratingWithState:&v89 objects:v115 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v90;
      do
      {
        for (m = 0; m != v43; ++m)
        {
          if (*v90 != v44)
          {
            objc_enumerationMutation(v41);
          }

          [v40 appendFormat:@"+ %@\n", *(*(&v89 + 1) + 8 * m)];
        }

        v43 = [v41 countByEnumeratingWithState:&v89 objects:v115 count:16];
      }

      while (v43);
    }

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v46 = v64;
    v47 = [v46 countByEnumeratingWithState:&v85 objects:v114 count:16];
    v11 = v66;
    if (v47)
    {
      v48 = v47;
      v49 = *v86;
      do
      {
        for (n = 0; n != v48; ++n)
        {
          if (*v86 != v49)
          {
            objc_enumerationMutation(v46);
          }

          [v40 appendFormat:@"  %@\n", *(*(&v85 + 1) + 8 * n)];
        }

        v48 = [v46 countByEnumeratingWithState:&v85 objects:v114 count:16];
      }

      while (v48);
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v51 = v67;
    v52 = [v51 countByEnumeratingWithState:&v81 objects:v113 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v82;
      do
      {
        for (ii = 0; ii != v53; ++ii)
        {
          if (*v82 != v54)
          {
            objc_enumerationMutation(v51);
          }

          [v40 appendFormat:@"* %@\n", *(*(&v81 + 1) + 8 * ii)];
        }

        v53 = [v51 countByEnumeratingWithState:&v81 objects:v113 count:16];
      }

      while (v53);
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v56 = v15;
    v57 = [v56 countByEnumeratingWithState:&v77 objects:v112 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v78;
      do
      {
        for (jj = 0; jj != v58; ++jj)
        {
          if (*v78 != v59)
          {
            objc_enumerationMutation(v56);
          }

          [v40 appendFormat:@"- %@\n", *(*(&v77 + 1) + 8 * jj)];
        }

        v58 = [v56 countByEnumeratingWithState:&v77 objects:v112 count:16];
      }

      while (v58);
    }
  }

  else
  {
    v40 = 0;
    v11 = v66;
  }

  v61 = v98;
LABEL_66:

LABEL_67:
  v62 = *MEMORY[0x1E69E9840];

  return v40;
}

- (void)changeDescriptionTo:()MRAdditions keyBlock:isUpdatedBlock:descriptionBlock:.cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = (*(a1 + 16))();
  OUTLINED_FUNCTION_0_18(&dword_1A2860000, v2, v3, "[changeDescription] Nil key returned for object: %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end