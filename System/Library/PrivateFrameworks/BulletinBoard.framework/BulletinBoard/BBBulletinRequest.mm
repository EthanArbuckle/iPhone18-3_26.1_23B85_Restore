@interface BBBulletinRequest
- (BOOL)hasAdditionalAttachmentsModificationsRelativeTo:(id)to;
- (BOOL)hasContentModificationsRelativeTo:(id)to;
- (void)_updateSupplementaryAction:(id)action;
- (void)addAlertSuppressionAppID:(id)d;
- (void)addAttachmentOfType:(int64_t)type;
- (void)addButton:(id)button;
- (void)generateNewBulletinID;
- (void)setContextValue:(id)value forKey:(id)key;
- (void)setPrimaryAttachmentType:(int64_t)type;
- (void)setSupplementaryActions:(id)actions forLayout:(int64_t)layout;
@end

@implementation BBBulletinRequest

- (void)setContextValue:(id)value forKey:(id)key
{
  v27[2] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  if (valueCopy && keyCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = MEMORY[0x277CBEAD8];
      v11 = *MEMORY[0x277CBE660];
      v26[0] = @"value";
      v26[1] = @"key";
      v27[0] = valueCopy;
      v27[1] = keyCopy;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
      v13 = [v10 exceptionWithName:v11 reason:@"key must be of type NSString" userInfo:v12];
      v14 = v13;

      objc_exception_throw(v13);
    }

    if ((BBIsValueAllowed(valueCopy) & 1) == 0)
    {
      v15 = MEMORY[0x277CBEAD8];
      v16 = *MEMORY[0x277CBE660];
      v17 = MEMORY[0x277CCACA8];
      v18 = BBAllowedClasses();
      v19 = [v17 stringWithFormat:@"value must be one of and contain only the following types: %@", v18];
      v24[0] = @"value";
      v24[1] = @"key";
      v25[0] = valueCopy;
      v25[1] = keyCopy;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
      v21 = [v15 exceptionWithName:v16 reason:v19 userInfo:v20];
      v22 = v21;

      objc_exception_throw(v21);
    }

    context = [(BBBulletin *)self context];
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(context, "count") + 1}];
    [v8 addEntriesFromDictionary:context];
    [v8 setValue:valueCopy forKey:keyCopy];
    [(BBBulletin *)self setContext:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setPrimaryAttachmentType:(int64_t)type
{
  primaryAttachment = [(BBBulletin *)self primaryAttachment];
  v6 = [primaryAttachment mutableCopy];
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

  [(BBMutableAttachmentMetadata *)v9 setType:type];
  [(BBBulletin *)self setPrimaryAttachment:v9];
}

- (void)addAttachmentOfType:(int64_t)type
{
  v10 = objc_alloc_init(BBMutableAttachmentMetadata);
  [(BBMutableAttachmentMetadata *)v10 setType:type];
  additionalAttachments = [(BBBulletin *)self additionalAttachments];
  v6 = additionalAttachments;
  if (additionalAttachments)
  {
    array = additionalAttachments;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v8 = array;

  v9 = [v8 arrayByAddingObject:v10];

  [(BBBulletin *)self setAdditionalAttachments:v9];
}

- (void)addButton:(id)button
{
  buttonCopy = button;
  if (!buttonCopy)
  {
    [(BBBulletinRequest *)self addButton:a2];
  }

  buttons = [(BBBulletin *)self buttons];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(buttons, "count")}];
  [v6 addObjectsFromArray:buttons];
  [v6 addObject:buttonCopy];
  [(BBBulletin *)self setButtons:v6];
}

- (void)setSupplementaryActions:(id)actions forLayout:(int64_t)layout
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__BBBulletinRequest_setSupplementaryActions_forLayout___block_invoke;
  v9[3] = &unk_278D2A5C8;
  v9[4] = self;
  v6 = [actions bs_mapNoNulls:v9];
  supplementaryActionsByLayout = [(BBBulletin *)self supplementaryActionsByLayout];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:layout];
  if (v6)
  {
    [supplementaryActionsByLayout setObject:v6 forKey:v8];
  }

  else
  {
    [supplementaryActionsByLayout removeObjectForKey:v8];
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

- (void)_updateSupplementaryAction:(id)action
{
  v16 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  [actionCopy setActionType:7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    actions = [actionCopy actions];
    v6 = [actions countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(actions);
          }

          [(BBBulletinRequest *)self _updateSupplementaryAction:*(*(&v11 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [actions countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addAlertSuppressionAppID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(BBBulletinRequest *)self addAlertSuppressionAppID:a2, dCopy];
    }

    v5 = objc_alloc(MEMORY[0x277CBEB58]);
    alertSuppressionAppIDs_deprecated = [(BBBulletin *)self alertSuppressionAppIDs_deprecated];
    v7 = [v5 initWithSet:alertSuppressionAppIDs_deprecated];

    v8 = [dCopy copy];
    [v7 addObject:v8];
    [(BBBulletin *)self setAlertSuppressionAppIDs_deprecated:v7];
  }
}

- (BOOL)hasContentModificationsRelativeTo:(id)to
{
  toCopy = to;
  content = [(BBBulletin *)self content];
  if (content || ([toCopy content], (v118 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    content2 = [(BBBulletin *)self content];
    [toCopy content];
    v122 = v123 = content2;
    v8 = 1;
    if (![content2 isEqualToContent:?])
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

  modalAlertContent = [(BBBulletin *)self modalAlertContent];
  HIDWORD(v153) = modalAlertContent == 0;
  v154 = v8;
  if (modalAlertContent || ([toCopy modalAlertContent], (v116 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    content2 = [(BBBulletin *)self modalAlertContent];
    [toCopy modalAlertContent];
    v119 = v120 = content2;
    if (![content2 isEqualToContent:?])
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

    filterCriteria = 1;
  }

  else
  {
    v116 = 0;
    filterCriteria = 0;
  }

  starkBannerContent = [(BBBulletin *)self starkBannerContent];
  DWORD2(v153) = starkBannerContent == 0;
  LODWORD(v153) = filterCriteria;
  if (starkBannerContent || ([toCopy starkBannerContent], (v112 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    content2 = [(BBBulletin *)self starkBannerContent];
    [toCopy starkBannerContent];
    v114 = v115 = content2;
    if (![content2 isEqualToContent:?])
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

  icon = [(BBBulletin *)self icon];
  communicationContext2 = icon == 0;
  v113 = icon;
  DWORD1(v153) = icon == 0;
  LODWORD(v152) = v15;
  if (icon || ([toCopy icon], (v109 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    content2 = [(BBBulletin *)self icon];
    icon2 = [toCopy icon];
    v111 = content2;
    if (![content2 isEqual:?])
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

  content2 = [(BBBulletin *)self hasEventDate];
  if (content2 != [toCopy hasEventDate])
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

  date = [(BBBulletin *)self date];
  HIDWORD(v152) = date == 0;
  v108 = date;
  if (date || ([toCopy date], (v104 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    content2 = [(BBBulletin *)self date];
    date2 = [toCopy date];
    v107 = content2;
    if (![content2 isEqualToDate:?])
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

  endDate = [(BBBulletin *)self endDate];
  HIDWORD(v151) = endDate == 0;
  v105 = endDate;
  if (endDate || ([toCopy endDate], (v100 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    content2 = [(BBBulletin *)self endDate];
    endDate2 = [toCopy endDate];
    v103 = content2;
    if (![content2 isEqualToDate:?])
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

  recencyDate = [(BBBulletin *)self recencyDate];
  v150 = recencyDate == 0;
  v101 = recencyDate;
  if (recencyDate || ([toCopy recencyDate], (v96 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    content2 = [(BBBulletin *)self recencyDate];
    recencyDate2 = [toCopy recencyDate];
    v99 = content2;
    if (![content2 isEqualToDate:?])
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

  timeZone = [(BBBulletin *)self timeZone];
  v148 = timeZone == 0;
  v97 = timeZone;
  if (timeZone || ([toCopy timeZone], (v92 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    content2 = [(BBBulletin *)self timeZone];
    timeZone2 = [toCopy timeZone];
    v95 = content2;
    if (![content2 isEqualToTimeZone:?])
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

  context = [(BBBulletin *)self context];
  v145 = context == 0;
  v93 = context;
  if (context || ([toCopy context], (v88 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    content2 = [(BBBulletin *)self context];
    context2 = [toCopy context];
    v91 = content2;
    if (![content2 isEqualToDictionary:?])
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

  primaryAttachment = [(BBBulletin *)self primaryAttachment];
  v143 = primaryAttachment == 0;
  v89 = primaryAttachment;
  if (primaryAttachment || ([toCopy primaryAttachment], (v85 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    content2 = [(BBBulletin *)self primaryAttachment];
    primaryAttachment2 = [toCopy primaryAttachment];
    v87 = content2;
    if ([content2 hasContentModificationsRelativeTo:?])
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

  if ([(BBBulletinRequest *)self hasAdditionalAttachmentsModificationsRelativeTo:toCopy])
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

  alertSuppressionContexts = [(BBBulletin *)self alertSuppressionContexts];
  v141 = alertSuppressionContexts == 0;
  v84 = alertSuppressionContexts;
  if (alertSuppressionContexts || ([toCopy alertSuppressionContexts], (v80 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    content2 = [(BBBulletin *)self alertSuppressionContexts];
    alertSuppressionContexts2 = [toCopy alertSuppressionContexts];
    v83 = content2;
    if (![content2 isEqualToSet:?])
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

  accessoryIconMask = [(BBBulletin *)self accessoryIconMask];
  HIDWORD(v139) = accessoryIconMask == 0;
  v81 = accessoryIconMask;
  if (accessoryIconMask || ([toCopy accessoryIconMask], (v76 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    content2 = [(BBBulletin *)self accessoryIconMask];
    accessoryIconMask2 = [toCopy accessoryIconMask];
    v79 = content2;
    if (![content2 isEqual:?])
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

  accessoryImage = [(BBBulletin *)self accessoryImage];
  HIDWORD(v138) = accessoryImage == 0;
  v77 = accessoryImage;
  if (accessoryImage || ([toCopy accessoryImage], (v72 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    content2 = [(BBBulletin *)self accessoryImage];
    accessoryImage2 = [toCopy accessoryImage];
    v75 = content2;
    if (![content2 isEqual:?])
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

  supplementaryActionsByLayout = [(BBBulletin *)self supplementaryActionsByLayout];
  HIDWORD(v137) = supplementaryActionsByLayout == 0;
  v73 = supplementaryActionsByLayout;
  if (supplementaryActionsByLayout || ([toCopy supplementaryActionsByLayout], (v69 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    supplementaryActionsByLayout2 = [(BBBulletin *)self supplementaryActionsByLayout];
    supplementaryActionsByLayout3 = [toCopy supplementaryActionsByLayout];
    v71 = supplementaryActionsByLayout2;
    v156 = 1;
    if (![supplementaryActionsByLayout2 isEqualToDictionary:?])
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

  content2 = [(BBBulletin *)self wantsFullscreenPresentation];
  if (content2 != [toCopy wantsFullscreenPresentation])
  {
    goto LABEL_120;
  }

  content2 = [(BBBulletin *)self ignoresQuietMode];
  if (content2 != [toCopy ignoresQuietMode])
  {
    goto LABEL_120;
  }

  content2 = [(BBBulletin *)self ignoresDowntime];
  if (content2 != [toCopy ignoresDowntime])
  {
    goto LABEL_120;
  }

  content2 = [(BBBulletin *)self preemptsPresentedAlert];
  if (content2 != [toCopy preemptsPresentedAlert])
  {
    goto LABEL_120;
  }

  content2 = [(BBBulletin *)self displaysActionsInline];
  if (content2 != [toCopy displaysActionsInline])
  {
    goto LABEL_120;
  }

  content2 = [(BBBulletin *)self dateIsAllDay];
  if (content2 != [toCopy dateIsAllDay])
  {
    goto LABEL_120;
  }

  content2 = [(BBBulletin *)self dateFormatStyle];
  if (content2 == [toCopy dateFormatStyle] && (content2 = -[BBBulletin clearable](self, "clearable"), content2 == objc_msgSend(toCopy, "clearable")) && (content2 = -[BBBulletin turnsOnDisplay](self, "turnsOnDisplay"), content2 == objc_msgSend(toCopy, "turnsOnDisplay")) && (content2 = -[BBBulletin sectionSubtype](self, "sectionSubtype"), content2 == objc_msgSend(toCopy, "sectionSubtype")) && (content2 = -[BBBulletin contentPreviewSetting](self, "contentPreviewSetting"), content2 == objc_msgSend(toCopy, "contentPreviewSetting")) && (content2 = -[BBBulletin preventAutomaticRemovalFromLockScreen](self, "preventAutomaticRemovalFromLockScreen"), content2 == objc_msgSend(toCopy, "preventAutomaticRemovalFromLockScreen")) && (content2 = -[BBBulletin lockScreenPriority](self, "lockScreenPriority"), content2 == objc_msgSend(toCopy, "lockScreenPriority")))
  {
    summaryArgument = [(BBBulletin *)self summaryArgument];
    summaryArgument2 = [toCopy summaryArgument];
    v68 = summaryArgument;
    if (BSEqualStrings() && (content2 = -[BBBulletin hasCriticalIcon](self, "hasCriticalIcon"), content2 == [toCopy hasCriticalIcon]) && (content2 = -[BBBulletin hasSubordinateIcon](self, "hasSubordinateIcon"), content2 == objc_msgSend(toCopy, "hasSubordinateIcon")) && (content2 = -[BBBulletin summaryArgumentCount](self, "summaryArgumentCount"), content2 == objc_msgSend(toCopy, "summaryArgumentCount")) && (content2 = -[BBBulletin backgroundStyle](self, "backgroundStyle"), content2 == objc_msgSend(toCopy, "backgroundStyle")))
    {
      header = [(BBBulletin *)self header];
      header2 = [toCopy header];
      v66 = header;
      if (BSEqualStrings())
      {
        footer = [(BBBulletin *)self footer];
        footer2 = [toCopy footer];
        v64 = footer;
        if (BSEqualStrings())
        {
          threadSummary = [(BBBulletin *)self threadSummary];
          threadSummary2 = [toCopy threadSummary];
          v62 = threadSummary;
          if (BSEqualObjects())
          {
            summary = [(BBBulletin *)self summary];
            summary2 = [toCopy summary];
            v60 = summary;
            if (BSEqualObjects())
            {
              attributedMessage = [(BBBulletin *)self attributedMessage];
              attributedMessage2 = [toCopy attributedMessage];
              v58 = attributedMessage;
              if (BSEqualObjects())
              {
                eventBehavior = [(BBBulletin *)self eventBehavior];
                eventBehavior2 = [toCopy eventBehavior];
                v56 = eventBehavior;
                if (BSEqualObjects() && (content2 = -[BBBulletin isHighlight](self, "isHighlight"), content2 == [toCopy isHighlight]) && (content2 = -[BBBulletin priorityNotificationStatus](self, "priorityNotificationStatus"), content2 == objc_msgSend(toCopy, "priorityNotificationStatus")) && (content2 = -[BBBulletin notificationSummaryStatus](self, "notificationSummaryStatus"), content2 == objc_msgSend(toCopy, "notificationSummaryStatus")))
                {
                  spotlightIdentifier = [(BBBulletin *)self spotlightIdentifier];
                  spotlightIdentifier2 = [toCopy spotlightIdentifier];
                  v54 = spotlightIdentifier;
                  if (BSEqualObjects())
                  {
                    categoryID = [(BBBulletin *)self categoryID];
                    categoryID2 = [toCopy categoryID];
                    v52 = categoryID;
                    if (BSEqualStrings())
                    {
                      contentType = [(BBBulletin *)self contentType];
                      contentType2 = [toCopy contentType];
                      v50 = contentType;
                      if (BSEqualStrings() && (content2 = -[BBBulletin screenCaptureProhibited](self, "screenCaptureProhibited"), content2 == [toCopy screenCaptureProhibited]))
                      {
                        communicationContext = [(BBBulletin *)self communicationContext];
                        communicationContext2 = [toCopy communicationContext];
                        v48 = communicationContext;
                        if (BSEqualObjects() && (content2 = -[BBBulletin interruptionLevel](self, "interruptionLevel", communicationContext, contentType2, v50, categoryID2, v52, spotlightIdentifier2, v54, eventBehavior2, v56, attributedMessage2, v58, summary2, v60, threadSummary2, v62, footer2, v64, header2, v66, summaryArgument2, v68), content2 == [toCopy interruptionLevel]) && (-[BBBulletin relevanceScore](self, "relevanceScore"), v45 = v44, objc_msgSend(toCopy, "relevanceScore"), v45 == v46))
                        {
                          filterCriteria = [(BBBulletin *)self filterCriteria];
                          content2 = [toCopy filterCriteria];
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

    if (content)
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
  if (content)
  {
    goto LABEL_220;
  }

LABEL_230:

LABEL_220:
  if (*&v135[8])
  {
    speechLanguage = [(BBBulletin *)self speechLanguage];
    speechLanguage2 = [toCopy speechLanguage];
    v41 = BSEqualStrings() ^ 1;
  }

  else
  {
    LOBYTE(v41) = 1;
  }

  return v41;
}

- (BOOL)hasAdditionalAttachmentsModificationsRelativeTo:(id)to
{
  toCopy = to;
  additionalAttachments = [(BBBulletin *)self additionalAttachments];
  additionalAttachments2 = [toCopy additionalAttachments];
  v7 = [additionalAttachments count];
  if (v7 == [additionalAttachments2 count])
  {
    if ([additionalAttachments count])
    {
      v8 = 0;
      do
      {
        v9 = [additionalAttachments objectAtIndexedSubscript:v8];
        v10 = [additionalAttachments2 objectAtIndexedSubscript:v8];
        v11 = [v9 hasContentModificationsRelativeTo:v10];

        if (v11)
        {
          break;
        }

        ++v8;
      }

      while (v8 < [additionalAttachments count]);
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
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [(BBBulletin *)self setBulletinID:uUIDString];
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