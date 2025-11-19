@interface BBBulletinRequest
- (BOOL)hasAdditionalAttachmentsModificationsRelativeTo:(id)a3;
- (BOOL)hasContentModificationsRelativeTo:(id)a3;
- (void)_updateSupplementaryAction:(id)a3;
- (void)addAlertSuppressionAppID:(id)a3;
- (void)addAttachmentOfType:(int64_t)a3;
- (void)addButton:(id)a3;
- (void)generateNewBulletinID;
- (void)setContextValue:(id)a3 forKey:(id)a4;
- (void)setPrimaryAttachmentType:(int64_t)a3;
- (void)setSupplementaryActions:(id)a3 forLayout:(int64_t)a4;
@end

@implementation BBBulletinRequest

- (void)setContextValue:(id)a3 forKey:(id)a4
{
  v27[2] = *MEMORY[0x277D85DE8];
  v23 = a3;
  v6 = a4;
  if (v23 && v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = MEMORY[0x277CBEAD8];
      v11 = *MEMORY[0x277CBE660];
      v26[0] = @"value";
      v26[1] = @"key";
      v27[0] = v23;
      v27[1] = v6;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
      v13 = [v10 exceptionWithName:v11 reason:@"key must be of type NSString" userInfo:v12];
      v14 = v13;

      objc_exception_throw(v13);
    }

    if ((BBIsValueAllowed(v23) & 1) == 0)
    {
      v15 = MEMORY[0x277CBEAD8];
      v16 = *MEMORY[0x277CBE660];
      v17 = MEMORY[0x277CCACA8];
      v18 = BBAllowedClasses();
      v19 = [v17 stringWithFormat:@"value must be one of and contain only the following types: %@", v18];
      v24[0] = @"value";
      v24[1] = @"key";
      v25[0] = v23;
      v25[1] = v6;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
      v21 = [v15 exceptionWithName:v16 reason:v19 userInfo:v20];
      v22 = v21;

      objc_exception_throw(v21);
    }

    v7 = [(BBBulletin *)self context];
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v7, "count") + 1}];
    [v8 addEntriesFromDictionary:v7];
    [v8 setValue:v23 forKey:v6];
    [(BBBulletin *)self setContext:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setPrimaryAttachmentType:(int64_t)a3
{
  v5 = [(BBBulletin *)self primaryAttachment];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(BBMutableAttachmentMetadata);
  }

  v9 = v8;

  [(BBMutableAttachmentMetadata *)v9 setType:a3];
  [(BBBulletin *)self setPrimaryAttachment:v9];
}

- (void)addAttachmentOfType:(int64_t)a3
{
  v10 = objc_alloc_init(BBMutableAttachmentMetadata);
  [(BBMutableAttachmentMetadata *)v10 setType:a3];
  v5 = [(BBBulletin *)self additionalAttachments];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEA60] array];
  }

  v8 = v7;

  v9 = [v8 arrayByAddingObject:v10];

  [(BBBulletin *)self setAdditionalAttachments:v9];
}

- (void)addButton:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    [(BBBulletinRequest *)self addButton:a2];
  }

  v5 = [(BBBulletin *)self buttons];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  [v6 addObjectsFromArray:v5];
  [v6 addObject:v7];
  [(BBBulletin *)self setButtons:v6];
}

- (void)setSupplementaryActions:(id)a3 forLayout:(int64_t)a4
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__BBBulletinRequest_setSupplementaryActions_forLayout___block_invoke;
  v9[3] = &unk_278D2A5C8;
  v9[4] = self;
  v6 = [a3 bs_mapNoNulls:v9];
  v7 = [(BBBulletin *)self supplementaryActionsByLayout];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  if (v6)
  {
    [v7 setObject:v6 forKey:v8];
  }

  else
  {
    [v7 removeObjectForKey:v8];
  }
}

id __55__BBBulletinRequest_setSupplementaryActions_forLayout___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];

  if (v4)
  {
    v4 = [v3 copy];
    [*(a1 + 32) _updateSupplementaryAction:v4];
  }

  return v4;
}

- (void)_updateSupplementaryAction:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 setActionType:7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v4 actions];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(BBBulletinRequest *)self _updateSupplementaryAction:*(*(&v11 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addAlertSuppressionAppID:(id)a3
{
  v9 = a3;
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(BBBulletinRequest *)self addAlertSuppressionAppID:a2, v9];
    }

    v5 = objc_alloc(MEMORY[0x277CBEB58]);
    v6 = [(BBBulletin *)self alertSuppressionAppIDs_deprecated];
    v7 = [v5 initWithSet:v6];

    v8 = [v9 copy];
    [v7 addObject:v8];
    [(BBBulletin *)self setAlertSuppressionAppIDs_deprecated:v7];
  }
}

- (BOOL)hasContentModificationsRelativeTo:(id)a3
{
  v6 = a3;
  v155 = [(BBBulletin *)self content];
  if (v155 || ([v6 content], (v118 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [(BBBulletin *)self content];
    [v6 content];
    v122 = v123 = v7;
    v8 = 1;
    if (![v7 isEqualToContent:?])
    {
      v154 = 1;
      v156 = 0;
      v153 = 0uLL;
      memset(v135, 0, sizeof(v135));
      v152 = 0;
      v151 = 0;
      v133 = 0;
      v149 = 0;
      v147 = 0;
      v129 = 0;
      v150 = 0;
      v146 = 0;
      v128 = 0;
      v148 = 0;
      v144 = 0;
      v127 = 0;
      v145 = 0;
      v142 = 0;
      v125 = 0;
      v143 = 0;
      v140 = 0;
      v124 = 0;
      v141 = 0;
      v138 = 0;
      v139 = 0;
      v9 = 0;
      v10 = 0;
      v137 = 0;
      v11 = 0;
      v136 = 0;
      v126 = 0;
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v134 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      goto LABEL_121;
    }
  }

  else
  {
    v118 = 0;
    v8 = 0;
  }

  v121 = [(BBBulletin *)self modalAlertContent];
  HIDWORD(v153) = v121 == 0;
  v154 = v8;
  if (v121 || ([v6 modalAlertContent], (v116 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [(BBBulletin *)self modalAlertContent];
    [v6 modalAlertContent];
    v119 = v120 = v7;
    if (![v7 isEqualToContent:?])
    {
      v156 = 1;
      memset(v135, 0, sizeof(v135));
      *(&v153 + 4) = 0;
      v152 = 0;
      v151 = 0;
      v133 = 0;
      v149 = 0;
      v147 = 0;
      v129 = 0;
      v150 = 0;
      v146 = 0;
      v128 = 0;
      v148 = 0;
      v144 = 0;
      v127 = 0;
      v145 = 0;
      v142 = 0;
      v125 = 0;
      v143 = 0;
      v140 = 0;
      v124 = 0;
      v141 = 0;
      v138 = 0;
      v139 = 0;
      v9 = 0;
      v10 = 0;
      v137 = 0;
      v11 = 0;
      v136 = 0;
      v126 = 0;
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v134 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      LODWORD(v153) = 1;
      goto LABEL_121;
    }

    v4 = 1;
  }

  else
  {
    v116 = 0;
    v4 = 0;
  }

  v117 = [(BBBulletin *)self starkBannerContent];
  DWORD2(v153) = v117 == 0;
  LODWORD(v153) = v4;
  if (v117 || ([v6 starkBannerContent], (v112 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [(BBBulletin *)self starkBannerContent];
    [v6 starkBannerContent];
    v114 = v115 = v7;
    if (![v7 isEqualToContent:?])
    {
      v156 = 1;
      *v135 = 0x100000000;
      DWORD1(v153) = 0;
      v151 = 0;
      v133 = 0;
      v149 = 0;
      v147 = 0;
      v129 = 0;
      v150 = 0;
      v146 = 0;
      v128 = 0;
      v148 = 0;
      v144 = 0;
      v127 = 0;
      v145 = 0;
      v142 = 0;
      v125 = 0;
      v143 = 0;
      v140 = 0;
      v124 = 0;
      v141 = 0;
      v138 = 0;
      v139 = 0;
      v9 = 0;
      v10 = 0;
      v137 = 0;
      v11 = 0;
      v136 = 0;
      v126 = 0;
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v134 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *&v135[8] = 0;
      v152 = 1;
      goto LABEL_121;
    }

    v15 = 1;
  }

  else
  {
    v112 = 0;
    v15 = 0;
  }

  v16 = [(BBBulletin *)self icon];
  v3 = v16 == 0;
  v113 = v16;
  DWORD1(v153) = v16 == 0;
  LODWORD(v152) = v15;
  if (v16 || ([v6 icon], (v109 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [(BBBulletin *)self icon];
    v110 = [v6 icon];
    v111 = v7;
    if (![v7 isEqual:?])
    {
      v156 = 1;
      v133 = 0;
      HIDWORD(v152) = 0;
      v149 = 0;
      v147 = 0;
      v129 = 0;
      v150 = 0;
      v146 = 0;
      v128 = 0;
      v148 = 0;
      v144 = 0;
      v127 = 0;
      v145 = 0;
      v142 = 0;
      v125 = 0;
      v143 = 0;
      v140 = 0;
      v124 = 0;
      v141 = 0;
      v138 = 0;
      v139 = 0;
      v9 = 0;
      v10 = 0;
      v137 = 0;
      v11 = 0;
      v136 = 0;
      v126 = 0;
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v134 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *&v135[8] = 0;
      *v135 = 0x100000001;
      v151 = 1;
      goto LABEL_121;
    }

    LODWORD(v151) = 1;
  }

  else
  {
    v109 = 0;
    LODWORD(v151) = 0;
  }

  v7 = [(BBBulletin *)self hasEventDate];
  if (v7 != [v6 hasEventDate])
  {
    v133 = 0;
    HIDWORD(v152) = 0;
    v149 = 0;
    HIDWORD(v151) = 0;
    v147 = 0;
    v129 = 0;
    v150 = 0;
    v146 = 0;
    v128 = 0;
    v148 = 0;
    v144 = 0;
    v127 = 0;
    v145 = 0;
    v142 = 0;
    v125 = 0;
    v143 = 0;
    v140 = 0;
    v124 = 0;
    v141 = 0;
    v138 = 0;
    v139 = 0;
    v9 = 0;
    v10 = 0;
    v137 = 0;
    v11 = 0;
    v136 = 0;
    v126 = 0;
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v134 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v156 = 1;
    *&v135[8] = 0;
    *v135 = 0x100000001;
    goto LABEL_121;
  }

  v17 = [(BBBulletin *)self date];
  HIDWORD(v152) = v17 == 0;
  v108 = v17;
  if (v17 || ([v6 date], (v104 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [(BBBulletin *)self date];
    v106 = [v6 date];
    v107 = v7;
    if (![v7 isEqualToDate:?])
    {
      v156 = 1;
      v133 = 0x100000000;
      HIDWORD(v151) = 0;
      v147 = 0;
      v129 = 0;
      v150 = 0;
      v146 = 0;
      v128 = 0;
      v148 = 0;
      v144 = 0;
      v127 = 0;
      v145 = 0;
      v142 = 0;
      v125 = 0;
      v143 = 0;
      v140 = 0;
      v124 = 0;
      v141 = 0;
      v138 = 0;
      v139 = 0;
      v9 = 0;
      v10 = 0;
      v137 = 0;
      v11 = 0;
      v136 = 0;
      v126 = 0;
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v134 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *&v135[8] = 0;
      *v135 = 0x100000001;
      v149 = 1;
      goto LABEL_121;
    }

    v149 = 1;
  }

  else
  {
    v104 = 0;
    v149 = 0;
  }

  v18 = [(BBBulletin *)self endDate];
  HIDWORD(v151) = v18 == 0;
  v105 = v18;
  if (v18 || ([v6 endDate], (v100 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [(BBBulletin *)self endDate];
    v102 = [v6 endDate];
    v103 = v7;
    if (![v7 isEqualToDate:?])
    {
      v156 = 1;
      v129 = 0;
      v150 = 0;
      v146 = 0;
      v128 = 0;
      v148 = 0;
      v144 = 0;
      v127 = 0;
      v145 = 0;
      v142 = 0;
      v125 = 0;
      v143 = 0;
      v140 = 0;
      v124 = 0;
      v141 = 0;
      v138 = 0;
      v139 = 0;
      v9 = 0;
      v10 = 0;
      v137 = 0;
      v11 = 0;
      v136 = 0;
      v126 = 0;
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v134 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *&v135[8] = 0;
      *v135 = 0x100000001;
      v133 = 0x100000001;
      v147 = 1;
      goto LABEL_121;
    }

    v147 = 1;
  }

  else
  {
    v100 = 0;
    v147 = 0;
  }

  v19 = [(BBBulletin *)self recencyDate];
  v150 = v19 == 0;
  v101 = v19;
  if (v19 || ([v6 recencyDate], (v96 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [(BBBulletin *)self recencyDate];
    v98 = [v6 recencyDate];
    v99 = v7;
    if (![v7 isEqualToDate:?])
    {
      v156 = 1;
      v128 = 0;
      v148 = 0;
      v144 = 0;
      v127 = 0;
      v145 = 0;
      v142 = 0;
      v125 = 0;
      v143 = 0;
      v140 = 0;
      v124 = 0;
      v141 = 0;
      v138 = 0;
      v139 = 0;
      v9 = 0;
      v10 = 0;
      v137 = 0;
      v11 = 0;
      v136 = 0;
      v126 = 0;
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v134 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *&v135[8] = 0;
      *v135 = 0x100000001;
      v133 = 0x100000001;
      v129 = 1;
      v146 = 1;
      goto LABEL_121;
    }

    v146 = 1;
  }

  else
  {
    v96 = 0;
    v146 = 0;
  }

  v20 = [(BBBulletin *)self timeZone];
  v148 = v20 == 0;
  v97 = v20;
  if (v20 || ([v6 timeZone], (v92 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [(BBBulletin *)self timeZone];
    v94 = [v6 timeZone];
    v95 = v7;
    if (![v7 isEqualToTimeZone:?])
    {
      v156 = 1;
      v127 = 0;
      v145 = 0;
      v142 = 0;
      v125 = 0;
      v143 = 0;
      v140 = 0;
      v124 = 0;
      v141 = 0;
      v138 = 0;
      v139 = 0;
      v9 = 0;
      v10 = 0;
      v137 = 0;
      v11 = 0;
      v136 = 0;
      v126 = 0;
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v134 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *&v135[8] = 0;
      *v135 = 0x100000001;
      v133 = 0x100000001;
      v129 = 1;
      v128 = 1;
      v144 = 1;
      goto LABEL_121;
    }

    v144 = 1;
  }

  else
  {
    v92 = 0;
    v144 = 0;
  }

  v21 = [(BBBulletin *)self context];
  v145 = v21 == 0;
  v93 = v21;
  if (v21 || ([v6 context], (v88 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [(BBBulletin *)self context];
    v90 = [v6 context];
    v91 = v7;
    if (![v7 isEqualToDictionary:?])
    {
      v156 = 1;
      v125 = 0;
      v143 = 0;
      v140 = 0;
      v124 = 0;
      v141 = 0;
      v138 = 0;
      v139 = 0;
      v9 = 0;
      v10 = 0;
      v137 = 0;
      v11 = 0;
      v136 = 0;
      v126 = 0;
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v134 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *&v135[8] = 0;
      *v135 = 0x100000001;
      v133 = 0x100000001;
      v129 = 1;
      v128 = 1;
      v127 = 1;
      v142 = 1;
      goto LABEL_121;
    }

    v142 = 1;
  }

  else
  {
    v88 = 0;
    v142 = 0;
  }

  v22 = [(BBBulletin *)self primaryAttachment];
  v143 = v22 == 0;
  v89 = v22;
  if (v22 || ([v6 primaryAttachment], (v85 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [(BBBulletin *)self primaryAttachment];
    v86 = [v6 primaryAttachment];
    v87 = v7;
    if ([v7 hasContentModificationsRelativeTo:?])
    {
      v156 = 1;
      v124 = 0;
      v141 = 0;
      v138 = 0;
      v139 = 0;
      v9 = 0;
      v10 = 0;
      v137 = 0;
      v11 = 0;
      v136 = 0;
      v126 = 0;
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v134 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *&v135[8] = 0;
      *v135 = 0x100000001;
      v133 = 0x100000001;
      v129 = 1;
      v128 = 1;
      v127 = 1;
      v125 = 1;
      v140 = 1;
      goto LABEL_121;
    }

    v140 = 1;
  }

  else
  {
    v85 = 0;
    v140 = 0;
  }

  if ([(BBBulletinRequest *)self hasAdditionalAttachmentsModificationsRelativeTo:v6])
  {
    v124 = 0;
    v141 = 0;
    v138 = 0;
    v139 = 0;
    v9 = 0;
    v10 = 0;
    v137 = 0;
    v11 = 0;
    v136 = 0;
    v126 = 0;
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v134 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v156 = 1;
    *&v135[8] = 0;
    *v135 = 0x100000001;
    v133 = 0x100000001;
    v129 = 1;
    v128 = 1;
    v127 = 1;
    v125 = 1;
    goto LABEL_121;
  }

  v23 = [(BBBulletin *)self alertSuppressionContexts];
  v141 = v23 == 0;
  v84 = v23;
  if (v23 || ([v6 alertSuppressionContexts], (v80 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [(BBBulletin *)self alertSuppressionContexts];
    v82 = [v6 alertSuppressionContexts];
    v83 = v7;
    if (![v7 isEqualToSet:?])
    {
      v156 = 1;
      v9 = 0;
      v137 = 0;
      v138 = 0;
      v10 = 0;
      v11 = 0;
      v136 = 0;
      v126 = 0;
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v134 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *&v135[8] = 0;
      *v135 = 0x100000001;
      v133 = 0x100000001;
      v129 = 1;
      v128 = 1;
      v127 = 1;
      v125 = 1;
      v124 = 1;
      v139 = 1;
      goto LABEL_121;
    }

    LODWORD(v139) = 1;
  }

  else
  {
    v80 = 0;
    LODWORD(v139) = 0;
  }

  v24 = [(BBBulletin *)self accessoryIconMask];
  HIDWORD(v139) = v24 == 0;
  v81 = v24;
  if (v24 || ([v6 accessoryIconMask], (v76 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [(BBBulletin *)self accessoryIconMask];
    v78 = [v6 accessoryIconMask];
    v79 = v7;
    if (![v7 isEqual:?])
    {
      v156 = 1;
      v10 = 0;
      v137 = 0;
      v11 = 0;
      v136 = 0;
      v126 = 0;
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v134 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *&v135[8] = 0;
      *v135 = 0x100000001;
      v133 = 0x100000001;
      v129 = 1;
      v128 = 1;
      v127 = 1;
      v125 = 1;
      v124 = 1;
      v9 = 1;
      v138 = 1;
      goto LABEL_121;
    }

    LODWORD(v138) = 1;
  }

  else
  {
    v76 = 0;
    LODWORD(v138) = 0;
  }

  v25 = [(BBBulletin *)self accessoryImage];
  HIDWORD(v138) = v25 == 0;
  v77 = v25;
  if (v25 || ([v6 accessoryImage], (v72 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [(BBBulletin *)self accessoryImage];
    v74 = [v6 accessoryImage];
    v75 = v7;
    if (![v7 isEqual:?])
    {
      v156 = 1;
      v11 = 0;
      v136 = 0;
      v126 = 0;
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v134 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *&v135[8] = 0;
      *v135 = 0x100000001;
      v133 = 0x100000001;
      v129 = 1;
      v128 = 1;
      v127 = 1;
      v125 = 1;
      v124 = 1;
      v9 = 1;
      v10 = 1;
      v137 = 1;
      goto LABEL_121;
    }

    LODWORD(v137) = 1;
  }

  else
  {
    v72 = 0;
    LODWORD(v137) = 0;
  }

  v26 = [(BBBulletin *)self supplementaryActionsByLayout];
  HIDWORD(v137) = v26 == 0;
  v73 = v26;
  if (v26 || ([v6 supplementaryActionsByLayout], (v69 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v27 = [(BBBulletin *)self supplementaryActionsByLayout];
    v70 = [v6 supplementaryActionsByLayout];
    v71 = v27;
    v156 = 1;
    if (![v27 isEqualToDictionary:?])
    {
      v126 = 0;
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v134 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *&v135[8] = 0;
      *v135 = 0x100000001;
      v133 = 0x100000001;
      v129 = 1;
      v128 = 1;
      v127 = 1;
      v125 = 1;
      v124 = 1;
      v9 = 1;
      v10 = 1;
      v11 = 1;
      v136 = 1;
      goto LABEL_121;
    }

    v136 = 1;
  }

  else
  {
    v69 = 0;
    v136 = 0;
  }

  v7 = [(BBBulletin *)self wantsFullscreenPresentation];
  if (v7 != [v6 wantsFullscreenPresentation])
  {
    goto LABEL_120;
  }

  v7 = [(BBBulletin *)self ignoresQuietMode];
  if (v7 != [v6 ignoresQuietMode])
  {
    goto LABEL_120;
  }

  v7 = [(BBBulletin *)self ignoresDowntime];
  if (v7 != [v6 ignoresDowntime])
  {
    goto LABEL_120;
  }

  v7 = [(BBBulletin *)self preemptsPresentedAlert];
  if (v7 != [v6 preemptsPresentedAlert])
  {
    goto LABEL_120;
  }

  v7 = [(BBBulletin *)self displaysActionsInline];
  if (v7 != [v6 displaysActionsInline])
  {
    goto LABEL_120;
  }

  v7 = [(BBBulletin *)self dateIsAllDay];
  if (v7 != [v6 dateIsAllDay])
  {
    goto LABEL_120;
  }

  v7 = [(BBBulletin *)self dateFormatStyle];
  if (v7 == [v6 dateFormatStyle] && (v7 = -[BBBulletin clearable](self, "clearable"), v7 == objc_msgSend(v6, "clearable")) && (v7 = -[BBBulletin turnsOnDisplay](self, "turnsOnDisplay"), v7 == objc_msgSend(v6, "turnsOnDisplay")) && (v7 = -[BBBulletin sectionSubtype](self, "sectionSubtype"), v7 == objc_msgSend(v6, "sectionSubtype")) && (v7 = -[BBBulletin contentPreviewSetting](self, "contentPreviewSetting"), v7 == objc_msgSend(v6, "contentPreviewSetting")) && (v7 = -[BBBulletin preventAutomaticRemovalFromLockScreen](self, "preventAutomaticRemovalFromLockScreen"), v7 == objc_msgSend(v6, "preventAutomaticRemovalFromLockScreen")) && (v7 = -[BBBulletin lockScreenPriority](self, "lockScreenPriority"), v7 == objc_msgSend(v6, "lockScreenPriority")))
  {
    v28 = [(BBBulletin *)self summaryArgument];
    v67 = [v6 summaryArgument];
    v68 = v28;
    if (BSEqualStrings() && (v7 = -[BBBulletin hasCriticalIcon](self, "hasCriticalIcon"), v7 == [v6 hasCriticalIcon]) && (v7 = -[BBBulletin hasSubordinateIcon](self, "hasSubordinateIcon"), v7 == objc_msgSend(v6, "hasSubordinateIcon")) && (v7 = -[BBBulletin summaryArgumentCount](self, "summaryArgumentCount"), v7 == objc_msgSend(v6, "summaryArgumentCount")) && (v7 = -[BBBulletin backgroundStyle](self, "backgroundStyle"), v7 == objc_msgSend(v6, "backgroundStyle")))
    {
      v29 = [(BBBulletin *)self header];
      v65 = [v6 header];
      v66 = v29;
      if (BSEqualStrings())
      {
        v30 = [(BBBulletin *)self footer];
        v63 = [v6 footer];
        v64 = v30;
        if (BSEqualStrings())
        {
          v31 = [(BBBulletin *)self threadSummary];
          v61 = [v6 threadSummary];
          v62 = v31;
          if (BSEqualObjects())
          {
            v32 = [(BBBulletin *)self summary];
            v59 = [v6 summary];
            v60 = v32;
            if (BSEqualObjects())
            {
              v33 = [(BBBulletin *)self attributedMessage];
              v57 = [v6 attributedMessage];
              v58 = v33;
              if (BSEqualObjects())
              {
                v34 = [(BBBulletin *)self eventBehavior];
                v55 = [v6 eventBehavior];
                v56 = v34;
                if (BSEqualObjects() && (v7 = -[BBBulletin isHighlight](self, "isHighlight"), v7 == [v6 isHighlight]) && (v7 = -[BBBulletin priorityNotificationStatus](self, "priorityNotificationStatus"), v7 == objc_msgSend(v6, "priorityNotificationStatus")) && (v7 = -[BBBulletin notificationSummaryStatus](self, "notificationSummaryStatus"), v7 == objc_msgSend(v6, "notificationSummaryStatus")))
                {
                  v35 = [(BBBulletin *)self spotlightIdentifier];
                  v53 = [v6 spotlightIdentifier];
                  v54 = v35;
                  if (BSEqualObjects())
                  {
                    v36 = [(BBBulletin *)self categoryID];
                    v51 = [v6 categoryID];
                    v52 = v36;
                    if (BSEqualStrings())
                    {
                      v37 = [(BBBulletin *)self contentType];
                      v49 = [v6 contentType];
                      v50 = v37;
                      if (BSEqualStrings() && (v7 = -[BBBulletin screenCaptureProhibited](self, "screenCaptureProhibited"), v7 == [v6 screenCaptureProhibited]))
                      {
                        v43 = [(BBBulletin *)self communicationContext];
                        v3 = [v6 communicationContext];
                        v48 = v43;
                        if (BSEqualObjects() && (v7 = -[BBBulletin interruptionLevel](self, "interruptionLevel", v43, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68), v7 == [v6 interruptionLevel]) && (-[BBBulletin relevanceScore](self, "relevanceScore"), v45 = v44, objc_msgSend(v6, "relevanceScore"), v45 == v46))
                        {
                          v4 = [(BBBulletin *)self filterCriteria];
                          v7 = [v6 filterCriteria];
                          v47 = BSEqualStrings();
                          v14 = 1;
                          v156 = 1;
                          *&v135[8] = v47;
                          *v135 = 0x100000001;
                          v133 = 0x100000001;
                          v129 = 1;
                          v128 = 1;
                          v127 = 1;
                          v125 = 1;
                          v124 = 1;
                          v9 = 1;
                          v10 = 1;
                          v11 = 1;
                          v126 = 1;
                          v130 = 0x100000001;
                          v131 = 0x100000001;
                          v132 = 0x100000001;
                          v134 = 0x100000001;
                          v12 = 1;
                        }

                        else
                        {
                          v14 = 0;
                          v156 = 1;
                          *&v135[4] = 1;
                          *v135 = 1;
                          v133 = 0x100000001;
                          v129 = 1;
                          v128 = 1;
                          v127 = 1;
                          v125 = 1;
                          v124 = 1;
                          v9 = 1;
                          v10 = 1;
                          v11 = 1;
                          v126 = 1;
                          v130 = 0x100000001;
                          v131 = 0x100000001;
                          v132 = 0x100000001;
                          v134 = 0x100000001;
                          v12 = 1;
                        }

                        v13 = 1;
                      }

                      else
                      {
                        v13 = 0;
                        v14 = 0;
                        v156 = 1;
                        *&v135[4] = 1;
                        *v135 = 1;
                        v133 = 0x100000001;
                        v129 = 1;
                        v128 = 1;
                        v127 = 1;
                        v125 = 1;
                        v124 = 1;
                        v9 = 1;
                        v10 = 1;
                        v11 = 1;
                        v126 = 1;
                        v130 = 0x100000001;
                        v131 = 0x100000001;
                        v132 = 0x100000001;
                        v134 = 0x100000001;
                        v12 = 1;
                      }
                    }

                    else
                    {
                      v12 = 0;
                      v13 = 0;
                      v14 = 0;
                      v156 = 1;
                      *&v135[8] = 0;
                      *v135 = 0x100000001;
                      v133 = 0x100000001;
                      v129 = 1;
                      v128 = 1;
                      v127 = 1;
                      v125 = 1;
                      v124 = 1;
                      v9 = 1;
                      v10 = 1;
                      v11 = 1;
                      v126 = 1;
                      v130 = 0x100000001;
                      v131 = 0x100000001;
                      v132 = 0x100000001;
                      v134 = 0x100000001;
                    }
                  }

                  else
                  {
                    v12 = 0;
                    v13 = 0;
                    v14 = 0;
                    v156 = 1;
                    *&v135[8] = 0;
                    *v135 = 0x100000001;
                    v133 = 0x100000001;
                    v129 = 1;
                    v128 = 1;
                    v127 = 1;
                    v125 = 1;
                    v124 = 1;
                    v9 = 1;
                    v10 = 1;
                    v11 = 1;
                    v126 = 1;
                    v130 = 0x100000001;
                    v131 = 0x100000001;
                    v132 = 0x100000001;
                    v134 = 1;
                  }
                }

                else
                {
                  v134 = 0;
                  v12 = 0;
                  v13 = 0;
                  v14 = 0;
                  v156 = 1;
                  *&v135[8] = 0;
                  *v135 = 0x100000001;
                  v133 = 0x100000001;
                  v129 = 1;
                  v128 = 1;
                  v127 = 1;
                  v125 = 1;
                  v124 = 1;
                  v9 = 1;
                  v10 = 1;
                  v11 = 1;
                  v126 = 1;
                  v130 = 0x100000001;
                  v131 = 0x100000001;
                  v132 = 0x100000001;
                }
              }

              else
              {
                v132 = 0x100000000;
                v134 = 0;
                v12 = 0;
                v13 = 0;
                v14 = 0;
                v156 = 1;
                *&v135[8] = 0;
                *v135 = 0x100000001;
                v133 = 0x100000001;
                v129 = 1;
                v128 = 1;
                v127 = 1;
                v125 = 1;
                v124 = 1;
                v9 = 1;
                v10 = 1;
                v11 = 1;
                v126 = 1;
                v130 = 0x100000001;
                v131 = 0x100000001;
              }
            }

            else
            {
              v132 = 0;
              v134 = 0;
              v12 = 0;
              v13 = 0;
              v14 = 0;
              v156 = 1;
              *&v135[8] = 0;
              *v135 = 0x100000001;
              v133 = 0x100000001;
              v129 = 1;
              v128 = 1;
              v127 = 1;
              v125 = 1;
              v124 = 1;
              v9 = 1;
              v10 = 1;
              v11 = 1;
              v126 = 1;
              v130 = 0x100000001;
              v131 = 0x100000001;
            }
          }

          else
          {
            v132 = 0;
            v134 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v156 = 1;
            *&v135[8] = 0;
            *v135 = 0x100000001;
            v133 = 0x100000001;
            v129 = 1;
            v128 = 1;
            v127 = 1;
            v125 = 1;
            v124 = 1;
            v9 = 1;
            v10 = 1;
            v11 = 1;
            v126 = 1;
            v130 = 0x100000001;
            v131 = 1;
          }
        }

        else
        {
          v131 = 0;
          v132 = 0;
          v134 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v156 = 1;
          *&v135[8] = 0;
          *v135 = 0x100000001;
          v133 = 0x100000001;
          v129 = 1;
          v128 = 1;
          v127 = 1;
          v125 = 1;
          v124 = 1;
          v9 = 1;
          v10 = 1;
          v11 = 1;
          v126 = 1;
          v130 = 0x100000001;
        }
      }

      else
      {
        v131 = 0;
        v132 = 0;
        v134 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v156 = 1;
        *&v135[8] = 0;
        *v135 = 0x100000001;
        v133 = 0x100000001;
        v129 = 1;
        v128 = 1;
        v127 = 1;
        v125 = 1;
        v124 = 1;
        v9 = 1;
        v10 = 1;
        v11 = 1;
        v126 = 1;
        v130 = 1;
      }
    }

    else
    {
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v134 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v156 = 1;
      *&v135[8] = 0;
      *v135 = 0x100000001;
      v133 = 0x100000001;
      v129 = 1;
      v128 = 1;
      v127 = 1;
      v125 = 1;
      v124 = 1;
      v9 = 1;
      v10 = 1;
      v11 = 1;
      v126 = 1;
    }
  }

  else
  {
LABEL_120:
    v126 = 0;
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v134 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v156 = 1;
    *&v135[4] = 1;
    *v135 = 1;
    v133 = 0x100000001;
    v129 = 1;
    v128 = 1;
    v127 = 1;
    v125 = 1;
    v124 = 1;
    v9 = 1;
    v10 = 1;
    v11 = 1;
  }

LABEL_121:
  if (v14)
  {
    v38 = v13;

    v13 = v38;
  }

  if (v13)
  {
  }

  if (v12)
  {
  }

  if (HIDWORD(v134))
  {
  }

  if (v134)
  {
  }

  if (v132)
  {
  }

  if (HIDWORD(v132))
  {
  }

  if (HIDWORD(v131))
  {
  }

  if (v131)
  {
  }

  if (HIDWORD(v130))
  {
  }

  if (v130)
  {
  }

  if (v126)
  {
  }

  if (v136)
  {
  }

  if (HIDWORD(v137))
  {
  }

  if (v11)
  {
  }

  if (v137)
  {
  }

  if (HIDWORD(v138))
  {
  }

  if (v10)
  {
  }

  if (v138)
  {
  }

  if (HIDWORD(v139))
  {
  }

  if (v9)
  {
  }

  if (v139)
  {
  }

  if (v141)
  {
  }

  if (v124)
  {
  }

  if (v140)
  {
  }

  if (v143)
  {
  }

  if (v125)
  {
  }

  if (v142)
  {
  }

  if (v145)
  {
  }

  if (v127)
  {
  }

  if (v144)
  {
  }

  if (v148)
  {
  }

  if (v128)
  {
  }

  if (v146)
  {
  }

  if (v150)
  {
  }

  if (v129)
  {
  }

  if (v147)
  {
  }

  if (HIDWORD(v151))
  {
  }

  if (v133)
  {
  }

  if (v149)
  {
  }

  if (HIDWORD(v152))
  {
  }

  if (HIDWORD(v133))
  {
  }

  if (v151)
  {
  }

  if (DWORD1(v153))
  {
  }

  if (*v135)
  {

    if (!v152)
    {
LABEL_211:
      if (!DWORD2(v153))
      {
        goto LABEL_213;
      }

      goto LABEL_212;
    }
  }

  else if (!v152)
  {
    goto LABEL_211;
  }

  if (DWORD2(v153))
  {
LABEL_212:
  }

LABEL_213:
  if (*&v135[4])
  {

    if (!v153)
    {
LABEL_215:
      if (!HIDWORD(v153))
      {
        goto LABEL_217;
      }

      goto LABEL_216;
    }
  }

  else if (!v153)
  {
    goto LABEL_215;
  }

  if (HIDWORD(v153))
  {
LABEL_216:
  }

LABEL_217:
  if (!v156)
  {
    if (!v154)
    {
      goto LABEL_219;
    }

LABEL_229:

    if (v155)
    {
      goto LABEL_220;
    }

    goto LABEL_230;
  }

  if (v154)
  {
    goto LABEL_229;
  }

LABEL_219:
  if (v155)
  {
    goto LABEL_220;
  }

LABEL_230:

LABEL_220:
  if (*&v135[8])
  {
    v39 = [(BBBulletin *)self speechLanguage];
    v40 = [v6 speechLanguage];
    v41 = BSEqualStrings() ^ 1;
  }

  else
  {
    LOBYTE(v41) = 1;
  }

  return v41;
}

- (BOOL)hasAdditionalAttachmentsModificationsRelativeTo:(id)a3
{
  v4 = a3;
  v5 = [(BBBulletin *)self additionalAttachments];
  v6 = [v4 additionalAttachments];
  v7 = [v5 count];
  if (v7 == [v6 count])
  {
    if ([v5 count])
    {
      v8 = 0;
      do
      {
        v9 = [v5 objectAtIndexedSubscript:v8];
        v10 = [v6 objectAtIndexedSubscript:v8];
        v11 = [v9 hasContentModificationsRelativeTo:v10];

        if (v11)
        {
          break;
        }

        ++v8;
      }

      while (v8 < [v5 count]);
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  return v11;
}

- (void)generateNewBulletinID
{
  v4 = [MEMORY[0x277CCAD78] UUID];
  v3 = [v4 UUIDString];
  [(BBBulletin *)self setBulletinID:v3];
}

- (void)addButton:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"BBBulletinRequest.m" lineNumber:156 description:{@"%@-addButton -> cannot be nil", objc_opt_class()}];
}

- (void)addAlertSuppressionAppID:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:a1 file:@"BBBulletinRequest.m" lineNumber:221 description:{@"%@-addAlertSuppressionAppID must be passed a string -> %@", objc_opt_class(), a3}];
}

@end