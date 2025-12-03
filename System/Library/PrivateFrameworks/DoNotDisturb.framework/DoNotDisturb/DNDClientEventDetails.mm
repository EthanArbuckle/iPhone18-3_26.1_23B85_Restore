@interface DNDClientEventDetails
- (BOOL)isEqual:(id)equal;
- (DNDClientEventDetails)initWithCoder:(id)coder;
- (id)_descriptionForRedacted:(BOOL)redacted;
- (id)_initWithDetails:(id)details;
- (id)_initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier platform:(unint64_t)platform type:(unint64_t)type urgency:(unint64_t)urgency sender:(id)sender threadIdentifier:(id)threadIdentifier filterCriteria:(id)self0 notifyAnyway:(BOOL)self1 shouldAdjustEventBehaviorForMirroring:(BOOL)self2 behavior:(unint64_t)self3 forwardingBehavior:(id)self4 title:(id)self5 subtitle:(id)self6 body:(id)self7;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDClientEventDetails

- (unint64_t)hash
{
  identifier = [(DNDClientEventDetails *)self identifier];
  v3 = [identifier hash];
  bundleIdentifier = [(DNDClientEventDetails *)self bundleIdentifier];
  v4 = [bundleIdentifier hash] ^ v3;
  platform = [(DNDClientEventDetails *)self platform];
  v6 = platform ^ [(DNDClientEventDetails *)self type];
  v7 = v4 ^ v6 ^ [(DNDClientEventDetails *)self urgency];
  sender = [(DNDClientEventDetails *)self sender];
  v9 = [sender hash];
  threadIdentifier = [(DNDClientEventDetails *)self threadIdentifier];
  v11 = v9 ^ [threadIdentifier hash];
  filterCriteria = [(DNDClientEventDetails *)self filterCriteria];
  v13 = v7 ^ v11 ^ [filterCriteria hash];
  notifyAnyway = [(DNDClientEventDetails *)self notifyAnyway];
  v15 = notifyAnyway ^ [(DNDClientEventDetails *)self behavior];
  forwardingBehavior = [(DNDClientEventDetails *)self forwardingBehavior];
  v17 = v13 ^ v15 ^ [forwardingBehavior hash];
  title = [(DNDClientEventDetails *)self title];
  v19 = [title hash];
  subtitle = [(DNDClientEventDetails *)self subtitle];
  v21 = v19 ^ [subtitle hash];
  body = [(DNDClientEventDetails *)self body];
  v23 = v21 ^ [body hash];
  v24 = v23 ^ [(DNDClientEventDetails *)self shouldAdjustEventBehaviorForMirroring];

  return v17 ^ v24;
}

- (id)_initWithDetails:(id)details
{
  detailsCopy = details;
  identifier = [detailsCopy identifier];
  bundleIdentifier = [detailsCopy bundleIdentifier];
  platform = [detailsCopy platform];
  type = [detailsCopy type];
  urgency = [detailsCopy urgency];
  sender = [detailsCopy sender];
  threadIdentifier = [detailsCopy threadIdentifier];
  filterCriteria = [detailsCopy filterCriteria];
  notifyAnyway = [detailsCopy notifyAnyway];
  shouldAdjustEventBehaviorForMirroring = [detailsCopy shouldAdjustEventBehaviorForMirroring];
  behavior = [detailsCopy behavior];
  forwardingBehavior = [detailsCopy forwardingBehavior];
  title = [detailsCopy title];
  subtitle = [detailsCopy subtitle];
  body = [detailsCopy body];

  BYTE1(v15) = shouldAdjustEventBehaviorForMirroring;
  LOBYTE(v15) = notifyAnyway;
  v13 = [(DNDClientEventDetails *)self _initWithIdentifier:identifier bundleIdentifier:bundleIdentifier platform:platform type:type urgency:urgency sender:sender threadIdentifier:threadIdentifier filterCriteria:filterCriteria notifyAnyway:v15 shouldAdjustEventBehaviorForMirroring:behavior behavior:forwardingBehavior forwardingBehavior:title title:subtitle subtitle:body body:?];

  return v13;
}

- (id)_initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier platform:(unint64_t)platform type:(unint64_t)type urgency:(unint64_t)urgency sender:(id)sender threadIdentifier:(id)threadIdentifier filterCriteria:(id)self0 notifyAnyway:(BOOL)self1 shouldAdjustEventBehaviorForMirroring:(BOOL)self2 behavior:(unint64_t)self3 forwardingBehavior:(id)self4 title:(id)self5 subtitle:(id)self6 body:(id)self7
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  senderCopy = sender;
  threadIdentifierCopy = threadIdentifier;
  criteriaCopy = criteria;
  forwardingBehaviorCopy = forwardingBehavior;
  titleCopy = title;
  subtitleCopy = subtitle;
  bodyCopy = body;
  v58.receiver = self;
  v58.super_class = DNDClientEventDetails;
  v28 = [(DNDClientEventDetails *)&v58 init];
  if (v28)
  {
    v52 = criteriaCopy;
    v53 = threadIdentifierCopy;
    v29 = senderCopy;
    v30 = bundleIdentifierCopy;
    v31 = [identifierCopy copy];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
      identifier = v28->_identifier;
      v28->_identifier = v33;
    }

    else
    {
      identifier = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [identifier UUIDString];
      v36 = v28->_identifier;
      v28->_identifier = uUIDString;
    }

    bundleIdentifierCopy = v30;
    v37 = [v30 copy];
    bundleIdentifier = v28->_bundleIdentifier;
    v28->_bundleIdentifier = v37;

    v28->_platform = platform;
    v28->_type = type;
    v28->_urgency = urgency;
    senderCopy = v29;
    v39 = [v29 copy];
    sender = v28->_sender;
    v28->_sender = v39;

    threadIdentifierCopy = v53;
    v41 = [v53 copy];
    threadIdentifier = v28->_threadIdentifier;
    v28->_threadIdentifier = v41;

    criteriaCopy = v52;
    v43 = [v52 copy];
    filterCriteria = v28->_filterCriteria;
    v28->_filterCriteria = v43;

    v28->_notifyAnyway = anyway;
    v28->_shouldAdjustEventBehaviorForMirroring = mirroring;
    v28->_behavior = behavior;
    objc_storeStrong(&v28->_forwardingBehavior, forwardingBehavior);
    v45 = [titleCopy copy];
    title = v28->_title;
    v28->_title = v45;

    v47 = [subtitleCopy copy];
    subtitle = v28->_subtitle;
    v28->_subtitle = v47;

    v49 = [bodyCopy copy];
    body = v28->_body;
    v28->_body = v49;
  }

  return v28;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
    goto LABEL_99;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = 0;
    goto LABEL_99;
  }

  v6 = equalCopy;
  identifier = [(DNDClientEventDetails *)self identifier];
  identifier2 = [(DNDClientEventDetails *)v6 identifier];
  body5 = identifier != identifier2;
  if (identifier == identifier2)
  {
    goto LABEL_10;
  }

  identifier3 = [(DNDClientEventDetails *)self identifier];
  if (!identifier3)
  {
    v107 = 0;
    v118 = 0;
    v115 = 0;
    v116 = 0;
    v109 = 0uLL;
    v114 = 0;
    v112 = 0uLL;
    v110 = 0;
    v119 = 0;
    v108 = 0;
    v111 = 0uLL;
    v117 = 0uLL;
    v113 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_28;
  }

  v107 = identifier3;
  identifier4 = [(DNDClientEventDetails *)v6 identifier];
  if (!identifier4)
  {
    v104 = 0;
    v115 = 0;
    v116 = 0;
    *(&v117 + 4) = 0;
    v109 = 0uLL;
    v118 = 0;
    v119 = 0;
    v114 = 0;
    v112 = 0uLL;
    v110 = 0;
    v108 = 0;
    v111 = 0uLL;
    LODWORD(v117) = 0;
    v113 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    HIDWORD(v117) = 1;
    goto LABEL_28;
  }

  v104 = identifier4;
  identifier5 = [(DNDClientEventDetails *)self identifier];
  [(DNDClientEventDetails *)v6 identifier];
  v101 = v102 = identifier5;
  if ([identifier5 isEqual:?])
  {
LABEL_10:
    bundleIdentifier = [(DNDClientEventDetails *)self bundleIdentifier];
    bundleIdentifier2 = [(DNDClientEventDetails *)v6 bundleIdentifier];
    v106 = bundleIdentifier;
    v19 = bundleIdentifier != bundleIdentifier2;
    HIDWORD(v117) = identifier != identifier2;
    if (bundleIdentifier == bundleIdentifier2)
    {
      goto LABEL_16;
    }

    bundleIdentifier3 = [(DNDClientEventDetails *)self bundleIdentifier];
    if (!bundleIdentifier3)
    {
      v103 = 0;
      v114 = 0;
      v115 = 0;
      v109 = 0uLL;
      v118 = 0;
      v119 = 0;
      v112 = 0uLL;
      v110 = 0;
      v108 = 0;
      v111 = 0uLL;
      *&v117 = 0;
      v113 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v116 = (identifier != identifier2) | 0x100000000;
      DWORD2(v117) = 1;
      goto LABEL_28;
    }

    v103 = bundleIdentifier3;
    bundleIdentifier4 = [(DNDClientEventDetails *)v6 bundleIdentifier];
    if (!bundleIdentifier4)
    {
      v100 = 0;
      v109 = 0uLL;
      v116 = (identifier != identifier2) | 0x100000000;
      v118 = 0;
      v119 = 0;
      v114 = 0;
      v112 = 0uLL;
      v110 = 0;
      v108 = 0;
      v111 = 0uLL;
      *&v117 = 0;
      v113 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      DWORD2(v117) = 1;
      v115 = 1;
      goto LABEL_28;
    }

    v100 = bundleIdentifier4;
    bundleIdentifier5 = [(DNDClientEventDetails *)self bundleIdentifier];
    bundleIdentifier6 = [(DNDClientEventDetails *)v6 bundleIdentifier];
    v99 = bundleIdentifier5;
    if ([bundleIdentifier5 isEqual:?])
    {
LABEL_16:
      platform = [(DNDClientEventDetails *)self platform];
      DWORD2(v117) = v19;
      if (platform == [(DNDClientEventDetails *)v6 platform]&& (v24 = [(DNDClientEventDetails *)self type], v24 == [(DNDClientEventDetails *)v6 type]) && (v25 = [(DNDClientEventDetails *)self urgency], v25 == [(DNDClientEventDetails *)v6 urgency]))
      {
        sender = [(DNDClientEventDetails *)self sender];
        sender2 = [(DNDClientEventDetails *)v6 sender];
        v97 = sender;
        body6 = sender != sender2;
        if (sender == sender2)
        {
          goto LABEL_100;
        }

        sender3 = [(DNDClientEventDetails *)self sender];
        if (!sender3)
        {
          v95 = 0;
          v114 = 0;
          v112 = 0uLL;
          v118 = 0x100000000;
          v110 = 0;
          v119 = 0;
          v109 = v19;
          v108 = 0;
          v111 = 0uLL;
          *&v117 = 0;
          v113 = 0;
          v13 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v116 = (identifier != identifier2) | 0x100000000;
          v115 = v19 | 0x100000000;
          v14 = 0;
          goto LABEL_28;
        }

        v95 = sender3;
        sender4 = [(DNDClientEventDetails *)v6 sender];
        if (!sender4)
        {
          v92 = 0;
          v112 = 0uLL;
          v118 = 0x100000000;
          v110 = 0;
          v119 = 0;
          v109 = v19;
          v108 = 0;
          v115 = v19 | 0x100000000;
          v111 = 0uLL;
          *&v117 = 0;
          v13 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v116 = (identifier != identifier2) | 0x100000000;
          v14 = 0;
          v113 = 0;
          v114 = 1;
          goto LABEL_28;
        }

        v92 = sender4;
        sender5 = [(DNDClientEventDetails *)self sender];
        sender6 = [(DNDClientEventDetails *)v6 sender];
        v88 = sender5;
        if ([sender5 isEqual:?])
        {
LABEL_100:
          threadIdentifier = [(DNDClientEventDetails *)self threadIdentifier];
          threadIdentifier2 = [(DNDClientEventDetails *)v6 threadIdentifier];
          v37 = threadIdentifier != threadIdentifier2;
          HIDWORD(v118) = body6;
          v94 = threadIdentifier;
          if (threadIdentifier == threadIdentifier2)
          {
            goto LABEL_106;
          }

          threadIdentifier3 = [(DNDClientEventDetails *)self threadIdentifier];
          if (!threadIdentifier3)
          {
            v91 = 0;
            v110 = 0;
            v119 = 0;
            v109 = v19;
            v108 = 0;
            v115 = v19 | 0x100000000;
            v111 = 0uLL;
            *(&v112 + 4) = 0;
            *&v117 = 0;
            v113 = 0;
            v114 = body6;
            v13 = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v116 = (identifier != identifier2) | 0x100000000;
            v14 = 0;
            LODWORD(v112) = body6;
            HIDWORD(v112) = 1;
            LODWORD(v118) = 1;
            goto LABEL_28;
          }

          v91 = threadIdentifier3;
          threadIdentifier4 = [(DNDClientEventDetails *)v6 threadIdentifier];
          if (!threadIdentifier4)
          {
            v86 = 0;
            *(&v109 + 4) = 0;
            v110 = 0;
            v119 = 0;
            v108 = 0;
            LODWORD(v109) = v19;
            v115 = v19 | 0x100000000;
            v111 = 0uLL;
            *(&v112 + 4) = 0;
            *&v117 = 0;
            v113 = 0;
            v114 = body6;
            v13 = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v116 = (identifier != identifier2) | 0x100000000;
            v14 = 0;
            LODWORD(v112) = body6;
            HIDWORD(v112) = 1;
            LODWORD(v118) = 1;
            HIDWORD(v109) = 1;
            goto LABEL_28;
          }

          v86 = threadIdentifier4;
          threadIdentifier5 = [(DNDClientEventDetails *)self threadIdentifier];
          threadIdentifier6 = [(DNDClientEventDetails *)v6 threadIdentifier];
          v84 = threadIdentifier5;
          if ([threadIdentifier5 isEqual:?])
          {
LABEL_106:
            filterCriteria = [(DNDClientEventDetails *)self filterCriteria];
            filterCriteria2 = [(DNDClientEventDetails *)v6 filterCriteria];
            HIDWORD(v119) = filterCriteria != filterCriteria2;
            LODWORD(v118) = v37;
            v90 = filterCriteria;
            if (filterCriteria == filterCriteria2)
            {
              goto LABEL_113;
            }

            filterCriteria3 = [(DNDClientEventDetails *)self filterCriteria];
            if (!filterCriteria3)
            {
              v85 = 0;
              *&v109 = v19;
              v51 = v37;
              v108 = 0;
              v115 = v19 | 0x100000000;
              v119 = 0x100000000;
              v111 = 0uLL;
              *(&v112 + 4) = 0;
              *&v117 = 0;
              v113 = 0;
              v114 = body6;
              v13 = 0;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v116 = (identifier != identifier2) | 0x100000000;
              v14 = 0;
              LODWORD(v112) = body6;
              HIDWORD(v112) = 1;
              DWORD2(v109) = v51;
              HIDWORD(v109) = v51;
              v110 = 1;
              goto LABEL_28;
            }

            v43 = filterCriteria3;
            filterCriteria4 = [(DNDClientEventDetails *)v6 filterCriteria];
            v85 = v43;
            if (!filterCriteria4)
            {
              v82 = 0;
              v52 = v37;
              v108 = 0;
              *&v109 = v19 | 0x100000000;
              v115 = v109;
              v119 = 0x100000000;
              v111 = 0uLL;
              *(&v112 + 4) = 0;
              *&v117 = 0;
              v113 = 0;
              v114 = body6;
              v13 = 0;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v116 = (identifier != identifier2) | 0x100000000;
              v14 = 0;
              LODWORD(v112) = body6;
              HIDWORD(v112) = 1;
              DWORD2(v109) = v52;
              HIDWORD(v109) = v52;
              v110 = 1;
              goto LABEL_28;
            }

            v82 = filterCriteria4;
            filterCriteria5 = [(DNDClientEventDetails *)self filterCriteria];
            filterCriteria6 = [(DNDClientEventDetails *)v6 filterCriteria];
            v81 = filterCriteria5;
            if ([filterCriteria5 isEqual:?])
            {
LABEL_113:
              notifyAnyway = [(DNDClientEventDetails *)self notifyAnyway];
              if (notifyAnyway == [(DNDClientEventDetails *)v6 notifyAnyway]&& (v47 = [(DNDClientEventDetails *)self shouldAdjustEventBehaviorForMirroring], v47 == [(DNDClientEventDetails *)v6 shouldAdjustEventBehaviorForMirroring]) && (v48 = [(DNDClientEventDetails *)self behavior], v48 == [(DNDClientEventDetails *)v6 behavior]))
              {
                forwardingBehavior = [(DNDClientEventDetails *)self forwardingBehavior];
                forwardingBehavior2 = [(DNDClientEventDetails *)v6 forwardingBehavior];
                LODWORD(v119) = forwardingBehavior != forwardingBehavior2;
                v79 = forwardingBehavior;
                if (forwardingBehavior == forwardingBehavior2)
                {
                  goto LABEL_125;
                }

                forwardingBehavior3 = [(DNDClientEventDetails *)self forwardingBehavior];
                if (!forwardingBehavior3)
                {
                  forwardingBehavior3 = 0;
                  v111 = 0uLL;
                  *(&v112 + 4) = 0;
                  *&v117 = 0;
                  v113 = 0;
                  v114 = body6 | 0x100000000;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v116 = (identifier != identifier2) | 0x100000000;
                  v115 = v19 | 0x100000000;
                  *&v109 = __PAIR64__(HIDWORD(v119), v19);
                  v14 = 0;
                  LODWORD(v112) = body6;
                  HIDWORD(v112) = 1;
                  DWORD2(v109) = v37;
                  HIDWORD(v109) = v37;
                  v110 = 1;
                  v108 = HIDWORD(v119);
                  v13 = 0;
                  LODWORD(v119) = 1;
                  goto LABEL_28;
                }

                forwardingBehavior4 = [(DNDClientEventDetails *)v6 forwardingBehavior];
                if (!forwardingBehavior4)
                {
                  forwardingBehavior4 = 0;
                  v111 = 1uLL;
                  *(&v112 + 4) = 0;
                  *&v117 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v116 = (identifier != identifier2) | 0x100000000;
                  v115 = v19 | 0x100000000;
                  v14 = 0;
                  v113 = 0;
                  v114 = body6 | 0x100000000;
                  LODWORD(v112) = body6;
                  HIDWORD(v112) = 1;
                  DWORD2(v109) = v37;
                  HIDWORD(v109) = v37;
                  v110 = 1;
                  *&v109 = __PAIR64__(HIDWORD(v119), DWORD2(v117));
                  v108 = HIDWORD(v119);
                  v13 = 0;
                  LODWORD(v119) = 1;
                  goto LABEL_28;
                }

                forwardingBehavior5 = [(DNDClientEventDetails *)self forwardingBehavior];
                forwardingBehavior6 = [(DNDClientEventDetails *)v6 forwardingBehavior];
                v69 = forwardingBehavior5;
                if ([forwardingBehavior5 isEqual:?])
                {
LABEL_125:
                  title = [(DNDClientEventDetails *)self title];
                  title2 = [(DNDClientEventDetails *)v6 title];
                  v75 = title;
                  DWORD1(v117) = title != title2;
                  if (title == title2)
                  {
                    goto LABEL_131;
                  }

                  title3 = [(DNDClientEventDetails *)self title];
                  if (!title3)
                  {
                    title3 = 0;
                    *(&v111 + 1) = 0;
                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    *&v117 = 0x100000000;
                    v115 = v19 | 0x100000000;
                    v14 = 0;
                    v116 = (identifier != identifier2) | 0x100000000;
                    v113 = 0;
                    v114 = body6 | 0x100000000;
                    *(&v112 + 1) = 0x100000000;
                    DWORD2(v109) = v37;
                    HIDWORD(v109) = v37;
                    v110 = 1;
                    *&v109 = __PAIR64__(HIDWORD(v119), DWORD2(v117));
                    v108 = HIDWORD(v119);
                    v13 = 0;
                    LODWORD(v111) = v119;
                    DWORD1(v111) = v119;
                    *&v112 = v114;
                    goto LABEL_28;
                  }

                  title4 = [(DNDClientEventDetails *)v6 title];
                  if (!title4)
                  {
                    title4 = 0;
                    *(&v111 + 1) = 0;
                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    *&v117 = 0x100000000;
                    v115 = v19 | 0x100000000;
                    v14 = 0;
                    v116 = (identifier != identifier2) | 0x100000000;
                    v113 = 0;
                    v114 = body6 | 0x100000000;
                    *(&v112 + 1) = 0x100000000;
                    DWORD2(v109) = v37;
                    HIDWORD(v109) = v37;
                    v110 = 0x100000001;
                    *&v109 = __PAIR64__(HIDWORD(v119), DWORD2(v117));
                    v108 = HIDWORD(v119);
                    v13 = 0;
                    LODWORD(v111) = v119;
                    DWORD1(v111) = v119;
                    *&v112 = v114;
                    goto LABEL_28;
                  }

                  title5 = [(DNDClientEventDetails *)self title];
                  title6 = [(DNDClientEventDetails *)v6 title];
                  v63 = title5;
                  if ([title5 isEqual:?])
                  {
LABEL_131:
                    subtitle = [(DNDClientEventDetails *)self subtitle];
                    subtitle2 = [(DNDClientEventDetails *)v6 subtitle];
                    v71 = subtitle;
                    LODWORD(v117) = subtitle != subtitle2;
                    if (subtitle == subtitle2)
                    {
                      goto LABEL_138;
                    }

                    subtitle3 = [(DNDClientEventDetails *)self subtitle];
                    if (!subtitle3)
                    {
                      subtitle3 = 0;
                      v15 = 0;
                      v16 = 0;
                      v17 = 0;
                      v116 = (identifier != identifier2) | 0x100000000;
                      v115 = v19 | 0x100000000;
                      v14 = 0;
                      v113 = 0;
                      v114 = body6 | 0x100000000;
                      HIDWORD(v111) = 0;
                      *&v112 = v114;
                      DWORD2(v109) = v37;
                      HIDWORD(v109) = v37;
                      LODWORD(v110) = 1;
                      *&v109 = __PAIR64__(HIDWORD(v119), DWORD2(v117));
                      v108 = HIDWORD(v119);
                      v13 = 0;
                      LODWORD(v111) = v119;
                      *(&v111 + 4) = __PAIR64__(DWORD1(v117), v119);
                      HIDWORD(v110) = DWORD1(v117);
                      *(&v112 + 1) = 0x100000001;
                      LODWORD(v117) = 1;
                      goto LABEL_28;
                    }

                    subtitle4 = [(DNDClientEventDetails *)v6 subtitle];
                    if (!subtitle4)
                    {
                      subtitle4 = 0;
                      v15 = 0;
                      v16 = 0;
                      v17 = 0;
                      v116 = (identifier != identifier2) | 0x100000000;
                      v115 = v19 | 0x100000000;
                      v14 = 0;
                      v113 = 0;
                      v114 = body6 | 0x100000000;
                      HIDWORD(v112) = 1;
                      DWORD2(v109) = v37;
                      HIDWORD(v109) = v37;
                      LODWORD(v110) = 1;
                      *&v109 = __PAIR64__(HIDWORD(v119), DWORD2(v117));
                      v108 = HIDWORD(v119);
                      v13 = 0;
                      LODWORD(v111) = v119;
                      DWORD1(v111) = v119;
                      LODWORD(v112) = body6;
                      *(&v112 + 4) = 0x100000001;
                      HIDWORD(v110) = DWORD1(v117);
                      LODWORD(v117) = 1;
                      *(&v111 + 1) = DWORD1(v117) | 0x100000000;
                      goto LABEL_28;
                    }

                    subtitle5 = [(DNDClientEventDetails *)self subtitle];
                    subtitle6 = [(DNDClientEventDetails *)v6 subtitle];
                    v59 = subtitle5;
                    if ([subtitle5 isEqual:?])
                    {
LABEL_138:
                      body = [(DNDClientEventDetails *)self body];
                      body2 = [(DNDClientEventDetails *)v6 body];
                      v65 = body;
                      if (body == body2)
                      {
                        v15 = 0;
                        v16 = 0;
                        v116 = (identifier != identifier2) | 0x100000000;
                        v115 = v19 | 0x100000000;
                        v14 = 0;
                        v114 = body6 | 0x100000000;
                        HIDWORD(v112) = 1;
                        DWORD2(v109) = v37;
                        HIDWORD(v109) = v37;
                        LODWORD(v110) = 1;
                        *&v109 = __PAIR64__(HIDWORD(v119), DWORD2(v117));
                        v108 = HIDWORD(v119);
                        LODWORD(v111) = v119;
                        DWORD1(v111) = v119;
                        LODWORD(v112) = body6;
                        *(&v112 + 4) = 0x100000001;
                        HIDWORD(v110) = DWORD1(v117);
                        *(&v111 + 1) = __PAIR64__(v117, DWORD1(v117));
                        v113 = v117;
                        v13 = 1;
                        v17 = 1;
                      }

                      else
                      {
                        body3 = [(DNDClientEventDetails *)self body];
                        if (body3)
                        {
                          body4 = [(DNDClientEventDetails *)v6 body];
                          if (body4)
                          {
                            body5 = [(DNDClientEventDetails *)self body];
                            body6 = [(DNDClientEventDetails *)v6 body];
                            v17 = [body5 isEqual:body6];
                            v116 = (identifier != identifier2) | 0x100000000;
                            v115 = v19 | 0x100000000;
                            v114 = HIDWORD(v118) | 0x100000000;
                            DWORD2(v109) = v37;
                            HIDWORD(v109) = v37;
                            LODWORD(v110) = 1;
                            *&v109 = __PAIR64__(HIDWORD(v119), v19);
                            v108 = HIDWORD(v119);
                            LODWORD(v111) = v119;
                            DWORD1(v111) = v119;
                            *&v112 = v114;
                            HIDWORD(v110) = DWORD1(v117);
                            *(&v112 + 1) = 0x100000001;
                            *(&v111 + 1) = __PAIR64__(v117, DWORD1(v117));
                            v113 = v117;
                            v13 = 1;
                            v14 = 1;
                            v15 = 1;
                            v16 = 1;
                          }

                          else
                          {
                            body4 = 0;
                            v16 = 0;
                            v17 = 0;
                            v116 = (identifier != identifier2) | 0x100000000;
                            v115 = v19 | 0x100000000;
                            v114 = body6 | 0x100000000;
                            DWORD2(v109) = v37;
                            HIDWORD(v109) = v37;
                            LODWORD(v110) = 1;
                            *&v109 = __PAIR64__(HIDWORD(v119), v19);
                            v108 = HIDWORD(v119);
                            LODWORD(v111) = v119;
                            DWORD1(v111) = v119;
                            *&v112 = v114;
                            HIDWORD(v110) = DWORD1(v117);
                            *(&v112 + 1) = 0x100000001;
                            *(&v111 + 1) = __PAIR64__(v117, DWORD1(v117));
                            v113 = v117;
                            v13 = 1;
                            v14 = 1;
                            v15 = 1;
                          }
                        }

                        else
                        {
                          body3 = 0;
                          v15 = 0;
                          v16 = 0;
                          v17 = 0;
                          v116 = (identifier != identifier2) | 0x100000000;
                          v115 = v19 | 0x100000000;
                          v114 = body6 | 0x100000000;
                          HIDWORD(v112) = 1;
                          DWORD2(v109) = v37;
                          HIDWORD(v109) = v37;
                          LODWORD(v110) = 1;
                          *&v109 = __PAIR64__(HIDWORD(v119), v19);
                          v108 = HIDWORD(v119);
                          LODWORD(v111) = v119;
                          DWORD1(v111) = v119;
                          LODWORD(v112) = body6;
                          *(&v112 + 4) = 0x100000001;
                          HIDWORD(v110) = DWORD1(v117);
                          *(&v111 + 1) = __PAIR64__(v117, DWORD1(v117));
                          v113 = v117;
                          v13 = 1;
                          v14 = 1;
                        }
                      }

                      goto LABEL_28;
                    }

                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    v116 = (identifier != identifier2) | 0x100000000;
                    v115 = v19 | 0x100000000;
                    v14 = 0;
                    v114 = body6 | 0x100000000;
                    HIDWORD(v112) = 1;
                    DWORD2(v109) = v37;
                    HIDWORD(v109) = v37;
                    LODWORD(v110) = 1;
                    *&v109 = __PAIR64__(HIDWORD(v119), DWORD2(v117));
                    v108 = HIDWORD(v119);
                    v13 = 0;
                    LODWORD(v111) = v119;
                    DWORD1(v111) = v119;
                    LODWORD(v112) = body6;
                    *(&v112 + 4) = 0x100000001;
                    HIDWORD(v110) = DWORD1(v117);
                    LODWORD(v117) = 1;
                    *(&v111 + 1) = DWORD1(v117) | 0x100000000;
                    v113 = 1;
                  }

                  else
                  {
                    *(&v112 + 1) = 0x100000000;
                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    *&v117 = 0x100000000;
                    v115 = v19 | 0x100000000;
                    v14 = 0;
                    v116 = (identifier != identifier2) | 0x100000000;
                    v113 = 0;
                    v114 = body6 | 0x100000000;
                    HIDWORD(v111) = 0;
                    *&v112 = v114;
                    DWORD2(v109) = v37;
                    HIDWORD(v109) = v37;
                    v110 = 0x100000001;
                    *&v109 = __PAIR64__(HIDWORD(v119), DWORD2(v117));
                    v108 = HIDWORD(v119);
                    v13 = 0;
                    LODWORD(v111) = v119;
                    *(&v111 + 4) = v119 | 0x100000000;
                  }
                }

                else
                {
                  *(&v112 + 4) = 0;
                  *&v117 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v116 = (identifier != identifier2) | 0x100000000;
                  v115 = v19 | 0x100000000;
                  v14 = 0;
                  v113 = 0;
                  v114 = body6 | 0x100000000;
                  LODWORD(v112) = body6;
                  HIDWORD(v112) = 1;
                  DWORD2(v109) = v37;
                  HIDWORD(v109) = v37;
                  v110 = 1;
                  *&v109 = __PAIR64__(HIDWORD(v119), DWORD2(v117));
                  v108 = HIDWORD(v119);
                  v13 = 0;
                  LODWORD(v119) = 1;
                  v111 = 0x100000001uLL;
                }
              }

              else
              {
                v115 = v19 | 0x100000000;
                LODWORD(v119) = 0;
                v111 = 0uLL;
                *(&v112 + 4) = 0;
                *&v117 = 0;
                v113 = 0;
                v114 = body6;
                v15 = 0;
                v16 = 0;
                v17 = 0;
                v116 = (identifier != identifier2) | 0x100000000;
                *&v109 = __PAIR64__(HIDWORD(v119), v19);
                v14 = 0;
                LODWORD(v112) = body6;
                HIDWORD(v112) = 1;
                DWORD2(v109) = v37;
                HIDWORD(v109) = v37;
                v110 = 1;
                v108 = HIDWORD(v119);
                v13 = 0;
              }
            }

            else
            {
              v115 = v19 | 0x100000000;
              v119 = 0x100000000;
              v111 = 0uLL;
              *(&v112 + 4) = 0;
              *&v117 = 0;
              v113 = 0;
              v114 = body6;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v116 = (identifier != identifier2) | 0x100000000;
              *&v109 = v115;
              v14 = 0;
              LODWORD(v112) = body6;
              HIDWORD(v112) = 1;
              DWORD2(v109) = v37;
              HIDWORD(v109) = v37;
              v13 = 0;
              v110 = 1;
              v108 = 1;
            }
          }

          else
          {
            v110 = 0;
            v119 = 0;
            *&v109 = v19;
            v108 = 0;
            v115 = v19 | 0x100000000;
            v111 = 0uLL;
            *(&v112 + 4) = 0;
            *&v117 = 0;
            v113 = 0;
            v114 = body6;
            v13 = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v116 = (identifier != identifier2) | 0x100000000;
            v14 = 0;
            LODWORD(v112) = body6;
            HIDWORD(v112) = 1;
            LODWORD(v118) = 1;
            *(&v109 + 1) = 0x100000001;
          }
        }

        else
        {
          v118 = 0x100000000;
          v110 = 0;
          v119 = 0;
          v109 = v19;
          v108 = 0;
          v115 = v19 | 0x100000000;
          v111 = 0uLL;
          *&v117 = 0;
          v13 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v116 = (identifier != identifier2) | 0x100000000;
          v14 = 0;
          v113 = 0;
          v114 = 1;
          v112 = 1uLL;
        }
      }

      else
      {
        v116 = (identifier != identifier2) | 0x100000000;
        v118 = 0;
        v119 = 0;
        v114 = 0;
        v112 = 0uLL;
        v110 = 0;
        v109 = v19;
        v108 = 0;
        v111 = 0uLL;
        *&v117 = 0;
        v113 = 0;
        v13 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v115 = v19;
        v14 = 0;
      }
    }

    else
    {
      v118 = 0;
      v119 = 0;
      v114 = 0;
      v112 = 0uLL;
      v110 = 0;
      v108 = 0;
      v111 = 0uLL;
      *&v117 = 0;
      v113 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v116 = (identifier != identifier2) | 0x100000000;
      DWORD2(v117) = 1;
      v115 = 1;
      v109 = 1uLL;
    }
  }

  else
  {
    LODWORD(v117) = 0;
    *(&v117 + 4) = 0;
    v114 = 0;
    v115 = 0;
    v109 = 0uLL;
    v118 = 0;
    v119 = 0;
    v112 = 0uLL;
    v110 = 0;
    v108 = 0;
    v111 = 0uLL;
    v113 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    HIDWORD(v117) = 1;
    v116 = 1;
  }

LABEL_28:
  if (v16)
  {
    v30 = identifier2;
    v31 = identifier;
    v32 = v13;
    v33 = v14;
    v34 = v15;

    v15 = v34;
    v14 = v33;
    v13 = v32;
    identifier = v31;
    identifier2 = v30;
  }

  if (v15)
  {
  }

  if (v14)
  {
  }

  if (v13)
  {
  }

  if (v113)
  {
  }

  if (HIDWORD(v111))
  {
  }

  if (v117)
  {
  }

  if (DWORD2(v112))
  {
  }

  if (DWORD2(v111))
  {
  }

  if (HIDWORD(v110))
  {
  }

  if (DWORD1(v117))
  {
  }

  if (DWORD1(v112))
  {
  }

  if (DWORD1(v111))
  {
  }

  if (v111)
  {
  }

  if (v119)
  {
  }

  if (HIDWORD(v114))
  {
  }

  if (v108)
  {
  }

  if (DWORD1(v109))
  {
  }

  if (HIDWORD(v119))
  {
  }

  if (v110)
  {
  }

  if (DWORD2(v109))
  {
  }

  if (HIDWORD(v109))
  {
  }

  if (v118)
  {
  }

  if (HIDWORD(v112))
  {
  }

  if (v112)
  {
  }

  if (v114)
  {
  }

  if (HIDWORD(v118))
  {
  }

  if (HIDWORD(v115))
  {
  }

  if (v109)
  {
  }

  if (v115)
  {
  }

  if (DWORD2(v117))
  {
  }

  if (HIDWORD(v116))
  {
  }

  if (v116)
  {
  }

  if (HIDWORD(v117))
  {
  }

  if (identifier != identifier2)
  {
  }

LABEL_99:
  return v17;
}

- (id)_descriptionForRedacted:(BOOL)redacted
{
  redactedCopy = redacted;
  v31 = MEMORY[0x277CCACA8];
  v30 = objc_opt_class();
  identifier = [(DNDClientEventDetails *)self identifier];
  bundleIdentifier = [(DNDClientEventDetails *)self bundleIdentifier];
  v35 = NSStringFromDNDPlatform([(DNDClientEventDetails *)self platform]);
  type = [(DNDClientEventDetails *)self type];
  if (type > 4)
  {
    v7 = @"<unknown>";
  }

  else
  {
    v7 = off_27843A928[type];
  }

  v28 = v7;
  urgency = [(DNDClientEventDetails *)self urgency];
  v9 = @"<unknown>";
  if (urgency <= 2)
  {
    v9 = off_27843A950[urgency];
  }

  v27 = v9;
  sender = [(DNDClientEventDetails *)self sender];
  v11 = sender;
  v33 = identifier;
  v32 = redactedCopy;
  v29 = sender;
  if (redactedCopy)
  {
    redactedDescription = [sender redactedDescription];
    threadIdentifier = [(DNDClientEventDetails *)self threadIdentifier];
    dnd_privacyObfuscatedString = [threadIdentifier dnd_privacyObfuscatedString];
    filterCriteria = [(DNDClientEventDetails *)self filterCriteria];
    dnd_privacyObfuscatedString2 = [filterCriteria dnd_privacyObfuscatedString];
  }

  else
  {
    dnd_privacyObfuscatedString = [(DNDClientEventDetails *)self threadIdentifier];
    dnd_privacyObfuscatedString2 = [(DNDClientEventDetails *)self filterCriteria];
    redactedDescription = v11;
  }

  notifyAnyway = [(DNDClientEventDetails *)self notifyAnyway];
  behavior = [(DNDClientEventDetails *)self behavior];
  v14 = @"Legacy";
  if (behavior != 1)
  {
    v14 = @"<unknown>";
  }

  if (!behavior)
  {
    v14 = @"Default";
  }

  v15 = v14;
  forwardingBehavior = [(DNDClientEventDetails *)self forwardingBehavior];
  title = [(DNDClientEventDetails *)self title];
  dnd_privacyObfuscatedString3 = [title dnd_privacyObfuscatedString];
  subtitle = [(DNDClientEventDetails *)self subtitle];
  dnd_privacyObfuscatedString4 = [subtitle dnd_privacyObfuscatedString];
  body = [(DNDClientEventDetails *)self body];
  dnd_privacyObfuscatedString5 = [body dnd_privacyObfuscatedString];
  v23 = [v31 stringWithFormat:@"<%@: %p identifier: '%@'; bundleIdentifier: %@; platform: %@; type: %@; urgency: %@; sender: %@; threadIdentifier: %@; filterCritera: %@; notifyAnyway: %d; behavior: %@; forwardingBehavior: %@; title: %@; subtitle: %@; body: %@; shouldAdjustEventBehaviorForMirroring: %d>", v30, self, v33, bundleIdentifier, v35, v28, v27, redactedDescription, dnd_privacyObfuscatedString, dnd_privacyObfuscatedString2, notifyAnyway, v15, forwardingBehavior, dnd_privacyObfuscatedString3, dnd_privacyObfuscatedString4, dnd_privacyObfuscatedString5, -[DNDClientEventDetails shouldAdjustEventBehaviorForMirroring](self, "shouldAdjustEventBehaviorForMirroring")];;

  if (v32)
  {

    dnd_privacyObfuscatedString2 = threadIdentifier;
    dnd_privacyObfuscatedString = redactedDescription;
  }

  return v23;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDMutableClientEventDetails alloc];

  return [(DNDClientEventDetails *)v4 _initWithDetails:self];
}

- (DNDClientEventDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v19 = [coderCopy decodeIntegerForKey:@"platform"];
  v18 = [coderCopy decodeIntegerForKey:@"type"];
  v17 = [coderCopy decodeIntegerForKey:@"urgency"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"threadIdentifier"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filterCriteria"];
  v6 = [coderCopy decodeBoolForKey:@"notifyAnyway"];
  v7 = [coderCopy decodeIntegerForKey:@"behavior"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"forwardingBehavior"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"body"];
  v12 = [coderCopy decodeBoolForKey:@"shouldAdjustEventBehaviorForMirroring"];

  BYTE1(v15) = v12;
  LOBYTE(v15) = v6;
  v13 = [(DNDClientEventDetails *)self _initWithIdentifier:v21 bundleIdentifier:v20 platform:v19 type:v18 urgency:v17 sender:v16 threadIdentifier:v4 filterCriteria:v5 notifyAnyway:v15 shouldAdjustEventBehaviorForMirroring:v7 behavior:v8 forwardingBehavior:v9 title:v10 subtitle:v11 body:?];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(DNDClientEventDetails *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  bundleIdentifier = [(DNDClientEventDetails *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  [coderCopy encodeInteger:-[DNDClientEventDetails platform](self forKey:{"platform"), @"platform"}];
  [coderCopy encodeInteger:-[DNDClientEventDetails type](self forKey:{"type"), @"type"}];
  [coderCopy encodeInteger:-[DNDClientEventDetails urgency](self forKey:{"urgency"), @"urgency"}];
  sender = [(DNDClientEventDetails *)self sender];
  [coderCopy encodeObject:sender forKey:@"sender"];

  threadIdentifier = [(DNDClientEventDetails *)self threadIdentifier];
  [coderCopy encodeObject:threadIdentifier forKey:@"threadIdentifier"];

  filterCriteria = [(DNDClientEventDetails *)self filterCriteria];
  [coderCopy encodeObject:filterCriteria forKey:@"filterCriteria"];

  [coderCopy encodeBool:-[DNDClientEventDetails notifyAnyway](self forKey:{"notifyAnyway"), @"notifyAnyway"}];
  [coderCopy encodeInteger:-[DNDClientEventDetails behavior](self forKey:{"behavior"), @"behavior"}];
  forwardingBehavior = [(DNDClientEventDetails *)self forwardingBehavior];
  [coderCopy encodeObject:forwardingBehavior forKey:@"forwardingBehavior"];

  title = [(DNDClientEventDetails *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  subtitle = [(DNDClientEventDetails *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];

  body = [(DNDClientEventDetails *)self body];
  [coderCopy encodeObject:body forKey:@"body"];

  [coderCopy encodeBool:-[DNDClientEventDetails shouldAdjustEventBehaviorForMirroring](self forKey:{"shouldAdjustEventBehaviorForMirroring"), @"shouldAdjustEventBehaviorForMirroring"}];
}

@end