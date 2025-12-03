@interface MOInteraction
- (MOInteraction)initWithCoder:(id)coder;
- (MOInteraction)initWithIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate mechanism:(int64_t)mechanism direction:(int64_t)direction bundleId:(id)id groupName:(id)name sender:(id)self0 recipients:(id)self1;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOInteraction

- (MOInteraction)initWithIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate mechanism:(int64_t)mechanism direction:(int64_t)direction bundleId:(id)id groupName:(id)name sender:(id)self0 recipients:(id)self1
{
  v62 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dateCopy = date;
  dateCopy2 = date;
  endDateCopy = endDate;
  endDateCopy2 = endDate;
  idCopy = id;
  idCopy2 = id;
  nameCopy = name;
  senderCopy = sender;
  recipientsCopy = recipients;
  v54 = recipientsCopy;
  if (identifierCopy)
  {
    v22 = recipientsCopy;
    v47 = identifierCopy;
    currentHandler = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (senderCopy)
    {
      personId = [senderCopy personId];

      if (personId)
      {
        personId2 = [senderCopy personId];
LABEL_10:
        v29 = personId2;
        [currentHandler addObject:personId2];

        goto LABEL_11;
      }

      identifier = [senderCopy identifier];

      if (identifier)
      {
        personId2 = [senderCopy identifier];
        goto LABEL_10;
      }
    }

LABEL_11:
    v44 = idCopy2;
    v45 = endDateCopy2;
    v46 = dateCopy2;
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
        personId3 = [v35 personId];

        if (personId3)
        {
          personId4 = [v35 personId];
        }

        else
        {
          identifier2 = [v35 identifier];

          if (!identifier2)
          {
            continue;
          }

          personId4 = [v35 identifier];
        }

        v39 = personId4;
        [currentHandler addObject:personId4];
      }

      v32 = [v30 countByEnumeratingWithState:&v57 objects:v61 count:16];
      if (!v32)
      {
LABEL_23:

        v56.receiver = self;
        v56.super_class = MOInteraction;
        v40 = [(MOGenericInteraction *)&v56 initWithParticipants:currentHandler];
        v41 = v40;
        identifierCopy = v47;
        idCopy2 = v44;
        if (v40)
        {
          objc_storeStrong(&v40->_identifier, identifier);
          objc_storeStrong(&v41->_startDate, dateCopy);
          objc_storeStrong(&v41->_endDate, endDateCopy);
          v41->_mechanism = mechanism;
          v41->_direction = direction;
          objc_storeStrong(&v41->_bundleId, idCopy);
          objc_storeStrong(&v41->_groupName, name);
          objc_storeStrong(&v41->_sender, sender);
          objc_storeStrong(&v41->_recipients, recipients);
        }

        self = v41;
        selfCopy = self;
        endDateCopy2 = v45;
        dateCopy2 = v46;
        goto LABEL_26;
      }
    }
  }

  v26 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [MOInteraction initWithIdentifier:v26 startDate:? endDate:? mechanism:? direction:? bundleId:? groupName:? sender:? recipients:?];
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MOInteraction.m" lineNumber:34 description:@"Invalid parameter not satisfying: identifier"];
  selfCopy = 0;
LABEL_26:

  v42 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)description
{
  v29 = *MEMORY[0x277D85DE8];
  sender = [(MOInteraction *)self sender];
  v23 = [sender description];

  v4 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  recipients = [(MOInteraction *)self recipients];
  v6 = [recipients countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(recipients);
        }

        v10 = [*(*(&v24 + 1) + 8 * i) description];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [recipients countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  v11 = [v4 componentsJoinedByString:@""];;
  v22 = MEMORY[0x277CCACA8];
  identifier = [(MOInteraction *)self identifier];
  startDate = [(MOInteraction *)self startDate];
  endDate = [(MOInteraction *)self endDate];
  mechanism = [(MOInteraction *)self mechanism];
  direction = [(MOInteraction *)self direction];
  bundleId = [(MOInteraction *)self bundleId];
  groupName = [(MOInteraction *)self groupName];
  v19 = [v22 stringWithFormat:@"identifier, %@, startDate, %@, endDate, %@, mechanism, %lu, direction, %lu, bundleId, %@, group name, %@, sender, <%@>, receipts, <%@>", identifier, startDate, endDate, mechanism, direction, bundleId, groupName, v23, v11];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeInteger:self->_mechanism forKey:@"mechanism"];
  [coderCopy encodeInteger:self->_direction forKey:@"direction"];
  [coderCopy encodeObject:self->_bundleId forKey:@"bundleId"];
  [coderCopy encodeObject:self->_groupName forKey:@"groupName"];
  [coderCopy encodeObject:self->_sender forKey:@"sender"];
  [coderCopy encodeObject:self->_recipients forKey:@"recipients"];
}

- (MOInteraction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  v16 = [coderCopy decodeIntegerForKey:@"mechanism"];
  v6 = [coderCopy decodeIntegerForKey:@"direction"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"recipients"];

  v14 = [(MOInteraction *)self initWithIdentifier:v17 startDate:v4 endDate:v5 mechanism:v16 direction:v6 bundleId:v7 groupName:v8 sender:v9 recipients:v13];
  return v14;
}

@end