@interface MOInteraction
- (MOInteraction)initWithCoder:(id)a3;
- (MOInteraction)initWithIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 mechanism:(int64_t)a6 direction:(int64_t)a7 bundleId:(id)a8 groupName:(id)a9 sender:(id)a10 recipients:(id)a11;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOInteraction

- (MOInteraction)initWithIdentifier:(id)a3 startDate:(id)a4 endDate:(id)a5 mechanism:(int64_t)a6 direction:(int64_t)a7 bundleId:(id)a8 groupName:(id)a9 sender:(id)a10 recipients:(id)a11
{
  v62 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v49 = a4;
  v17 = a4;
  v50 = a5;
  v18 = a5;
  v53 = a8;
  v19 = a8;
  v55 = a9;
  v20 = a10;
  v21 = a11;
  v54 = v21;
  if (v16)
  {
    v22 = v21;
    v47 = v16;
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v20)
    {
      v24 = [v20 personId];

      if (v24)
      {
        v25 = [v20 personId];
LABEL_10:
        v29 = v25;
        [v23 addObject:v25];

        goto LABEL_11;
      }

      v28 = [v20 identifier];

      if (v28)
      {
        v25 = [v20 identifier];
        goto LABEL_10;
      }
    }

LABEL_11:
    v44 = v19;
    v45 = v18;
    v46 = v17;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v30 = v22;
    v31 = [v30 countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (!v31)
    {
      goto LABEL_23;
    }

    v32 = v31;
    v33 = *v58;
    while (1)
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v58 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v57 + 1) + 8 * i);
        v36 = [v35 personId];

        if (v36)
        {
          v37 = [v35 personId];
        }

        else
        {
          v38 = [v35 identifier];

          if (!v38)
          {
            continue;
          }

          v37 = [v35 identifier];
        }

        v39 = v37;
        [v23 addObject:v37];
      }

      v32 = [v30 countByEnumeratingWithState:&v57 objects:v61 count:16];
      if (!v32)
      {
LABEL_23:

        v56.receiver = self;
        v56.super_class = MOInteraction;
        v40 = [(MOGenericInteraction *)&v56 initWithParticipants:v23];
        v41 = v40;
        v16 = v47;
        v19 = v44;
        if (v40)
        {
          objc_storeStrong(&v40->_identifier, a3);
          objc_storeStrong(&v41->_startDate, v49);
          objc_storeStrong(&v41->_endDate, v50);
          v41->_mechanism = a6;
          v41->_direction = a7;
          objc_storeStrong(&v41->_bundleId, v53);
          objc_storeStrong(&v41->_groupName, a9);
          objc_storeStrong(&v41->_sender, a10);
          objc_storeStrong(&v41->_recipients, a11);
        }

        self = v41;
        v27 = self;
        v18 = v45;
        v17 = v46;
        goto LABEL_26;
      }
    }
  }

  v26 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [MOInteraction initWithIdentifier:v26 startDate:? endDate:? mechanism:? direction:? bundleId:? groupName:? sender:? recipients:?];
  }

  v23 = [MEMORY[0x277CCA890] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"MOInteraction.m" lineNumber:34 description:@"Invalid parameter not satisfying: identifier"];
  v27 = 0;
LABEL_26:

  v42 = *MEMORY[0x277D85DE8];
  return v27;
}

- (id)description
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(MOInteraction *)self sender];
  v23 = [v3 description];

  v4 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [(MOInteraction *)self recipients];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v24 + 1) + 8 * i) description];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  v11 = [v4 componentsJoinedByString:@""];;
  v22 = MEMORY[0x277CCACA8];
  v12 = [(MOInteraction *)self identifier];
  v13 = [(MOInteraction *)self startDate];
  v14 = [(MOInteraction *)self endDate];
  v15 = [(MOInteraction *)self mechanism];
  v16 = [(MOInteraction *)self direction];
  v17 = [(MOInteraction *)self bundleId];
  v18 = [(MOInteraction *)self groupName];
  v19 = [v22 stringWithFormat:@"identifier, %@, startDate, %@, endDate, %@, mechanism, %lu, direction, %lu, bundleId, %@, group name, %@, sender, <%@>, receipts, <%@>", v12, v13, v14, v15, v16, v17, v18, v23, v11];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeInteger:self->_mechanism forKey:@"mechanism"];
  [v5 encodeInteger:self->_direction forKey:@"direction"];
  [v5 encodeObject:self->_bundleId forKey:@"bundleId"];
  [v5 encodeObject:self->_groupName forKey:@"groupName"];
  [v5 encodeObject:self->_sender forKey:@"sender"];
  [v5 encodeObject:self->_recipients forKey:@"recipients"];
}

- (MOInteraction)initWithCoder:(id)a3
{
  v3 = a3;
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v16 = [v3 decodeIntegerForKey:@"mechanism"];
  v6 = [v3 decodeIntegerForKey:@"direction"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v3 decodeObjectOfClasses:v12 forKey:@"recipients"];

  v14 = [(MOInteraction *)self initWithIdentifier:v17 startDate:v4 endDate:v5 mechanism:v16 direction:v6 bundleId:v7 groupName:v8 sender:v9 recipients:v13];
  return v14;
}

@end