@interface DNDClientEventDetails
- (BOOL)isEqual:(id)a3;
- (DNDClientEventDetails)initWithCoder:(id)a3;
- (id)_descriptionForRedacted:(BOOL)a3;
- (id)_initWithDetails:(id)a3;
- (id)_initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 platform:(unint64_t)a5 type:(unint64_t)a6 urgency:(unint64_t)a7 sender:(id)a8 threadIdentifier:(id)a9 filterCriteria:(id)a10 notifyAnyway:(BOOL)a11 shouldAdjustEventBehaviorForMirroring:(BOOL)a12 behavior:(unint64_t)a13 forwardingBehavior:(id)a14 title:(id)a15 subtitle:(id)a16 body:(id)a17;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDClientEventDetails

- (unint64_t)hash
{
  v27 = [(DNDClientEventDetails *)self identifier];
  v3 = [v27 hash];
  v26 = [(DNDClientEventDetails *)self bundleIdentifier];
  v4 = [v26 hash] ^ v3;
  v5 = [(DNDClientEventDetails *)self platform];
  v6 = v5 ^ [(DNDClientEventDetails *)self type];
  v7 = v4 ^ v6 ^ [(DNDClientEventDetails *)self urgency];
  v8 = [(DNDClientEventDetails *)self sender];
  v9 = [v8 hash];
  v10 = [(DNDClientEventDetails *)self threadIdentifier];
  v11 = v9 ^ [v10 hash];
  v12 = [(DNDClientEventDetails *)self filterCriteria];
  v13 = v7 ^ v11 ^ [v12 hash];
  v14 = [(DNDClientEventDetails *)self notifyAnyway];
  v15 = v14 ^ [(DNDClientEventDetails *)self behavior];
  v16 = [(DNDClientEventDetails *)self forwardingBehavior];
  v17 = v13 ^ v15 ^ [v16 hash];
  v18 = [(DNDClientEventDetails *)self title];
  v19 = [v18 hash];
  v20 = [(DNDClientEventDetails *)self subtitle];
  v21 = v19 ^ [v20 hash];
  v22 = [(DNDClientEventDetails *)self body];
  v23 = v21 ^ [v22 hash];
  v24 = v23 ^ [(DNDClientEventDetails *)self shouldAdjustEventBehaviorForMirroring];

  return v17 ^ v24;
}

- (id)_initWithDetails:(id)a3
{
  v3 = a3;
  v21 = [v3 identifier];
  v20 = [v3 bundleIdentifier];
  v19 = [v3 platform];
  v18 = [v3 type];
  v17 = [v3 urgency];
  v16 = [v3 sender];
  v4 = [v3 threadIdentifier];
  v5 = [v3 filterCriteria];
  v6 = [v3 notifyAnyway];
  v7 = [v3 shouldAdjustEventBehaviorForMirroring];
  v8 = [v3 behavior];
  v9 = [v3 forwardingBehavior];
  v10 = [v3 title];
  v11 = [v3 subtitle];
  v12 = [v3 body];

  BYTE1(v15) = v7;
  LOBYTE(v15) = v6;
  v13 = [(DNDClientEventDetails *)self _initWithIdentifier:v21 bundleIdentifier:v20 platform:v19 type:v18 urgency:v17 sender:v16 threadIdentifier:v4 filterCriteria:v5 notifyAnyway:v15 shouldAdjustEventBehaviorForMirroring:v8 behavior:v9 forwardingBehavior:v10 title:v11 subtitle:v12 body:?];

  return v13;
}

- (id)_initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 platform:(unint64_t)a5 type:(unint64_t)a6 urgency:(unint64_t)a7 sender:(id)a8 threadIdentifier:(id)a9 filterCriteria:(id)a10 notifyAnyway:(BOOL)a11 shouldAdjustEventBehaviorForMirroring:(BOOL)a12 behavior:(unint64_t)a13 forwardingBehavior:(id)a14 title:(id)a15 subtitle:(id)a16 body:(id)a17
{
  v20 = a3;
  v21 = a4;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v57 = a14;
  v25 = a15;
  v26 = a16;
  v27 = a17;
  v58.receiver = self;
  v58.super_class = DNDClientEventDetails;
  v28 = [(DNDClientEventDetails *)&v58 init];
  if (v28)
  {
    v52 = v24;
    v53 = v23;
    v29 = v22;
    v30 = v21;
    v31 = [v20 copy];
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
      v35 = [identifier UUIDString];
      v36 = v28->_identifier;
      v28->_identifier = v35;
    }

    v21 = v30;
    v37 = [v30 copy];
    bundleIdentifier = v28->_bundleIdentifier;
    v28->_bundleIdentifier = v37;

    v28->_platform = a5;
    v28->_type = a6;
    v28->_urgency = a7;
    v22 = v29;
    v39 = [v29 copy];
    sender = v28->_sender;
    v28->_sender = v39;

    v23 = v53;
    v41 = [v53 copy];
    threadIdentifier = v28->_threadIdentifier;
    v28->_threadIdentifier = v41;

    v24 = v52;
    v43 = [v52 copy];
    filterCriteria = v28->_filterCriteria;
    v28->_filterCriteria = v43;

    v28->_notifyAnyway = a11;
    v28->_shouldAdjustEventBehaviorForMirroring = a12;
    v28->_behavior = a13;
    objc_storeStrong(&v28->_forwardingBehavior, a14);
    v45 = [v25 copy];
    title = v28->_title;
    v28->_title = v45;

    v47 = [v26 copy];
    subtitle = v28->_subtitle;
    v28->_subtitle = v47;

    v49 = [v27 copy];
    body = v28->_body;
    v28->_body = v49;
  }

  return v28;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
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

  v6 = v5;
  v7 = [(DNDClientEventDetails *)self identifier];
  v8 = [(DNDClientEventDetails *)v6 identifier];
  v9 = v7 != v8;
  if (v7 == v8)
  {
    goto LABEL_10;
  }

  v10 = [(DNDClientEventDetails *)self identifier];
  if (!v10)
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

  v107 = v10;
  v11 = [(DNDClientEventDetails *)v6 identifier];
  if (!v11)
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

  v104 = v11;
  v12 = [(DNDClientEventDetails *)self identifier];
  [(DNDClientEventDetails *)v6 identifier];
  v101 = v102 = v12;
  if ([v12 isEqual:?])
  {
LABEL_10:
    v18 = [(DNDClientEventDetails *)self bundleIdentifier];
    v105 = [(DNDClientEventDetails *)v6 bundleIdentifier];
    v106 = v18;
    v19 = v18 != v105;
    HIDWORD(v117) = v7 != v8;
    if (v18 == v105)
    {
      goto LABEL_16;
    }

    v20 = [(DNDClientEventDetails *)self bundleIdentifier];
    if (!v20)
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
      v116 = (v7 != v8) | 0x100000000;
      DWORD2(v117) = 1;
      goto LABEL_28;
    }

    v103 = v20;
    v21 = [(DNDClientEventDetails *)v6 bundleIdentifier];
    if (!v21)
    {
      v100 = 0;
      v109 = 0uLL;
      v116 = (v7 != v8) | 0x100000000;
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

    v100 = v21;
    v22 = [(DNDClientEventDetails *)self bundleIdentifier];
    v98 = [(DNDClientEventDetails *)v6 bundleIdentifier];
    v99 = v22;
    if ([v22 isEqual:?])
    {
LABEL_16:
      v23 = [(DNDClientEventDetails *)self platform];
      DWORD2(v117) = v19;
      if (v23 == [(DNDClientEventDetails *)v6 platform]&& (v24 = [(DNDClientEventDetails *)self type], v24 == [(DNDClientEventDetails *)v6 type]) && (v25 = [(DNDClientEventDetails *)self urgency], v25 == [(DNDClientEventDetails *)v6 urgency]))
      {
        v26 = [(DNDClientEventDetails *)self sender];
        v96 = [(DNDClientEventDetails *)v6 sender];
        v97 = v26;
        v3 = v26 != v96;
        if (v26 == v96)
        {
          goto LABEL_100;
        }

        v27 = [(DNDClientEventDetails *)self sender];
        if (!v27)
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
          v116 = (v7 != v8) | 0x100000000;
          v115 = v19 | 0x100000000;
          v14 = 0;
          goto LABEL_28;
        }

        v95 = v27;
        v28 = [(DNDClientEventDetails *)v6 sender];
        if (!v28)
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
          v116 = (v7 != v8) | 0x100000000;
          v14 = 0;
          v113 = 0;
          v114 = 1;
          goto LABEL_28;
        }

        v92 = v28;
        v29 = [(DNDClientEventDetails *)self sender];
        v87 = [(DNDClientEventDetails *)v6 sender];
        v88 = v29;
        if ([v29 isEqual:?])
        {
LABEL_100:
          v36 = [(DNDClientEventDetails *)self threadIdentifier];
          v93 = [(DNDClientEventDetails *)v6 threadIdentifier];
          v37 = v36 != v93;
          HIDWORD(v118) = v3;
          v94 = v36;
          if (v36 == v93)
          {
            goto LABEL_106;
          }

          v38 = [(DNDClientEventDetails *)self threadIdentifier];
          if (!v38)
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
            v114 = v3;
            v13 = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v116 = (v7 != v8) | 0x100000000;
            v14 = 0;
            LODWORD(v112) = v3;
            HIDWORD(v112) = 1;
            LODWORD(v118) = 1;
            goto LABEL_28;
          }

          v91 = v38;
          v39 = [(DNDClientEventDetails *)v6 threadIdentifier];
          if (!v39)
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
            v114 = v3;
            v13 = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v116 = (v7 != v8) | 0x100000000;
            v14 = 0;
            LODWORD(v112) = v3;
            HIDWORD(v112) = 1;
            LODWORD(v118) = 1;
            HIDWORD(v109) = 1;
            goto LABEL_28;
          }

          v86 = v39;
          v40 = [(DNDClientEventDetails *)self threadIdentifier];
          v83 = [(DNDClientEventDetails *)v6 threadIdentifier];
          v84 = v40;
          if ([v40 isEqual:?])
          {
LABEL_106:
            v41 = [(DNDClientEventDetails *)self filterCriteria];
            v89 = [(DNDClientEventDetails *)v6 filterCriteria];
            HIDWORD(v119) = v41 != v89;
            LODWORD(v118) = v37;
            v90 = v41;
            if (v41 == v89)
            {
              goto LABEL_113;
            }

            v42 = [(DNDClientEventDetails *)self filterCriteria];
            if (!v42)
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
              v114 = v3;
              v13 = 0;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v116 = (v7 != v8) | 0x100000000;
              v14 = 0;
              LODWORD(v112) = v3;
              HIDWORD(v112) = 1;
              DWORD2(v109) = v51;
              HIDWORD(v109) = v51;
              v110 = 1;
              goto LABEL_28;
            }

            v43 = v42;
            v44 = [(DNDClientEventDetails *)v6 filterCriteria];
            v85 = v43;
            if (!v44)
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
              v114 = v3;
              v13 = 0;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v116 = (v7 != v8) | 0x100000000;
              v14 = 0;
              LODWORD(v112) = v3;
              HIDWORD(v112) = 1;
              DWORD2(v109) = v52;
              HIDWORD(v109) = v52;
              v110 = 1;
              goto LABEL_28;
            }

            v82 = v44;
            v45 = [(DNDClientEventDetails *)self filterCriteria];
            v80 = [(DNDClientEventDetails *)v6 filterCriteria];
            v81 = v45;
            if ([v45 isEqual:?])
            {
LABEL_113:
              v46 = [(DNDClientEventDetails *)self notifyAnyway];
              if (v46 == [(DNDClientEventDetails *)v6 notifyAnyway]&& (v47 = [(DNDClientEventDetails *)self shouldAdjustEventBehaviorForMirroring], v47 == [(DNDClientEventDetails *)v6 shouldAdjustEventBehaviorForMirroring]) && (v48 = [(DNDClientEventDetails *)self behavior], v48 == [(DNDClientEventDetails *)v6 behavior]))
              {
                v49 = [(DNDClientEventDetails *)self forwardingBehavior];
                v78 = [(DNDClientEventDetails *)v6 forwardingBehavior];
                LODWORD(v119) = v49 != v78;
                v79 = v49;
                if (v49 == v78)
                {
                  goto LABEL_125;
                }

                v77 = [(DNDClientEventDetails *)self forwardingBehavior];
                if (!v77)
                {
                  v77 = 0;
                  v111 = 0uLL;
                  *(&v112 + 4) = 0;
                  *&v117 = 0;
                  v113 = 0;
                  v114 = v3 | 0x100000000;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v116 = (v7 != v8) | 0x100000000;
                  v115 = v19 | 0x100000000;
                  *&v109 = __PAIR64__(HIDWORD(v119), v19);
                  v14 = 0;
                  LODWORD(v112) = v3;
                  HIDWORD(v112) = 1;
                  DWORD2(v109) = v37;
                  HIDWORD(v109) = v37;
                  v110 = 1;
                  v108 = HIDWORD(v119);
                  v13 = 0;
                  LODWORD(v119) = 1;
                  goto LABEL_28;
                }

                v76 = [(DNDClientEventDetails *)v6 forwardingBehavior];
                if (!v76)
                {
                  v76 = 0;
                  v111 = 1uLL;
                  *(&v112 + 4) = 0;
                  *&v117 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v116 = (v7 != v8) | 0x100000000;
                  v115 = v19 | 0x100000000;
                  v14 = 0;
                  v113 = 0;
                  v114 = v3 | 0x100000000;
                  LODWORD(v112) = v3;
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

                v50 = [(DNDClientEventDetails *)self forwardingBehavior];
                v68 = [(DNDClientEventDetails *)v6 forwardingBehavior];
                v69 = v50;
                if ([v50 isEqual:?])
                {
LABEL_125:
                  v53 = [(DNDClientEventDetails *)self title];
                  v74 = [(DNDClientEventDetails *)v6 title];
                  v75 = v53;
                  DWORD1(v117) = v53 != v74;
                  if (v53 == v74)
                  {
                    goto LABEL_131;
                  }

                  v73 = [(DNDClientEventDetails *)self title];
                  if (!v73)
                  {
                    v73 = 0;
                    *(&v111 + 1) = 0;
                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    *&v117 = 0x100000000;
                    v115 = v19 | 0x100000000;
                    v14 = 0;
                    v116 = (v7 != v8) | 0x100000000;
                    v113 = 0;
                    v114 = v3 | 0x100000000;
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

                  v72 = [(DNDClientEventDetails *)v6 title];
                  if (!v72)
                  {
                    v72 = 0;
                    *(&v111 + 1) = 0;
                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    *&v117 = 0x100000000;
                    v115 = v19 | 0x100000000;
                    v14 = 0;
                    v116 = (v7 != v8) | 0x100000000;
                    v113 = 0;
                    v114 = v3 | 0x100000000;
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

                  v54 = [(DNDClientEventDetails *)self title];
                  v62 = [(DNDClientEventDetails *)v6 title];
                  v63 = v54;
                  if ([v54 isEqual:?])
                  {
LABEL_131:
                    v55 = [(DNDClientEventDetails *)self subtitle];
                    v70 = [(DNDClientEventDetails *)v6 subtitle];
                    v71 = v55;
                    LODWORD(v117) = v55 != v70;
                    if (v55 == v70)
                    {
                      goto LABEL_138;
                    }

                    v67 = [(DNDClientEventDetails *)self subtitle];
                    if (!v67)
                    {
                      v67 = 0;
                      v15 = 0;
                      v16 = 0;
                      v17 = 0;
                      v116 = (v7 != v8) | 0x100000000;
                      v115 = v19 | 0x100000000;
                      v14 = 0;
                      v113 = 0;
                      v114 = v3 | 0x100000000;
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

                    v66 = [(DNDClientEventDetails *)v6 subtitle];
                    if (!v66)
                    {
                      v66 = 0;
                      v15 = 0;
                      v16 = 0;
                      v17 = 0;
                      v116 = (v7 != v8) | 0x100000000;
                      v115 = v19 | 0x100000000;
                      v14 = 0;
                      v113 = 0;
                      v114 = v3 | 0x100000000;
                      HIDWORD(v112) = 1;
                      DWORD2(v109) = v37;
                      HIDWORD(v109) = v37;
                      LODWORD(v110) = 1;
                      *&v109 = __PAIR64__(HIDWORD(v119), DWORD2(v117));
                      v108 = HIDWORD(v119);
                      v13 = 0;
                      LODWORD(v111) = v119;
                      DWORD1(v111) = v119;
                      LODWORD(v112) = v3;
                      *(&v112 + 4) = 0x100000001;
                      HIDWORD(v110) = DWORD1(v117);
                      LODWORD(v117) = 1;
                      *(&v111 + 1) = DWORD1(v117) | 0x100000000;
                      goto LABEL_28;
                    }

                    v56 = [(DNDClientEventDetails *)self subtitle];
                    v58 = [(DNDClientEventDetails *)v6 subtitle];
                    v59 = v56;
                    if ([v56 isEqual:?])
                    {
LABEL_138:
                      v57 = [(DNDClientEventDetails *)self body];
                      v64 = [(DNDClientEventDetails *)v6 body];
                      v65 = v57;
                      if (v57 == v64)
                      {
                        v15 = 0;
                        v16 = 0;
                        v116 = (v7 != v8) | 0x100000000;
                        v115 = v19 | 0x100000000;
                        v14 = 0;
                        v114 = v3 | 0x100000000;
                        HIDWORD(v112) = 1;
                        DWORD2(v109) = v37;
                        HIDWORD(v109) = v37;
                        LODWORD(v110) = 1;
                        *&v109 = __PAIR64__(HIDWORD(v119), DWORD2(v117));
                        v108 = HIDWORD(v119);
                        LODWORD(v111) = v119;
                        DWORD1(v111) = v119;
                        LODWORD(v112) = v3;
                        *(&v112 + 4) = 0x100000001;
                        HIDWORD(v110) = DWORD1(v117);
                        *(&v111 + 1) = __PAIR64__(v117, DWORD1(v117));
                        v113 = v117;
                        v13 = 1;
                        v17 = 1;
                      }

                      else
                      {
                        v61 = [(DNDClientEventDetails *)self body];
                        if (v61)
                        {
                          v60 = [(DNDClientEventDetails *)v6 body];
                          if (v60)
                          {
                            v9 = [(DNDClientEventDetails *)self body];
                            v3 = [(DNDClientEventDetails *)v6 body];
                            v17 = [v9 isEqual:v3];
                            v116 = (v7 != v8) | 0x100000000;
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
                            v60 = 0;
                            v16 = 0;
                            v17 = 0;
                            v116 = (v7 != v8) | 0x100000000;
                            v115 = v19 | 0x100000000;
                            v114 = v3 | 0x100000000;
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
                          v61 = 0;
                          v15 = 0;
                          v16 = 0;
                          v17 = 0;
                          v116 = (v7 != v8) | 0x100000000;
                          v115 = v19 | 0x100000000;
                          v114 = v3 | 0x100000000;
                          HIDWORD(v112) = 1;
                          DWORD2(v109) = v37;
                          HIDWORD(v109) = v37;
                          LODWORD(v110) = 1;
                          *&v109 = __PAIR64__(HIDWORD(v119), v19);
                          v108 = HIDWORD(v119);
                          LODWORD(v111) = v119;
                          DWORD1(v111) = v119;
                          LODWORD(v112) = v3;
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
                    v116 = (v7 != v8) | 0x100000000;
                    v115 = v19 | 0x100000000;
                    v14 = 0;
                    v114 = v3 | 0x100000000;
                    HIDWORD(v112) = 1;
                    DWORD2(v109) = v37;
                    HIDWORD(v109) = v37;
                    LODWORD(v110) = 1;
                    *&v109 = __PAIR64__(HIDWORD(v119), DWORD2(v117));
                    v108 = HIDWORD(v119);
                    v13 = 0;
                    LODWORD(v111) = v119;
                    DWORD1(v111) = v119;
                    LODWORD(v112) = v3;
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
                    v116 = (v7 != v8) | 0x100000000;
                    v113 = 0;
                    v114 = v3 | 0x100000000;
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
                  v116 = (v7 != v8) | 0x100000000;
                  v115 = v19 | 0x100000000;
                  v14 = 0;
                  v113 = 0;
                  v114 = v3 | 0x100000000;
                  LODWORD(v112) = v3;
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
                v114 = v3;
                v15 = 0;
                v16 = 0;
                v17 = 0;
                v116 = (v7 != v8) | 0x100000000;
                *&v109 = __PAIR64__(HIDWORD(v119), v19);
                v14 = 0;
                LODWORD(v112) = v3;
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
              v114 = v3;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v116 = (v7 != v8) | 0x100000000;
              *&v109 = v115;
              v14 = 0;
              LODWORD(v112) = v3;
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
            v114 = v3;
            v13 = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v116 = (v7 != v8) | 0x100000000;
            v14 = 0;
            LODWORD(v112) = v3;
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
          v116 = (v7 != v8) | 0x100000000;
          v14 = 0;
          v113 = 0;
          v114 = 1;
          v112 = 1uLL;
        }
      }

      else
      {
        v116 = (v7 != v8) | 0x100000000;
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
      v116 = (v7 != v8) | 0x100000000;
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
    v30 = v8;
    v31 = v7;
    v32 = v13;
    v33 = v14;
    v34 = v15;

    v15 = v34;
    v14 = v33;
    v13 = v32;
    v7 = v31;
    v8 = v30;
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

  if (v7 != v8)
  {
  }

LABEL_99:
  return v17;
}

- (id)_descriptionForRedacted:(BOOL)a3
{
  v3 = a3;
  v31 = MEMORY[0x277CCACA8];
  v30 = objc_opt_class();
  v5 = [(DNDClientEventDetails *)self identifier];
  v36 = [(DNDClientEventDetails *)self bundleIdentifier];
  v35 = NSStringFromDNDPlatform([(DNDClientEventDetails *)self platform]);
  v6 = [(DNDClientEventDetails *)self type];
  if (v6 > 4)
  {
    v7 = @"<unknown>";
  }

  else
  {
    v7 = off_27843A928[v6];
  }

  v28 = v7;
  v8 = [(DNDClientEventDetails *)self urgency];
  v9 = @"<unknown>";
  if (v8 <= 2)
  {
    v9 = off_27843A950[v8];
  }

  v27 = v9;
  v10 = [(DNDClientEventDetails *)self sender];
  v11 = v10;
  v33 = v5;
  v32 = v3;
  v29 = v10;
  if (v3)
  {
    v34 = [v10 redactedDescription];
    v26 = [(DNDClientEventDetails *)self threadIdentifier];
    v38 = [v26 dnd_privacyObfuscatedString];
    v25 = [(DNDClientEventDetails *)self filterCriteria];
    v37 = [v25 dnd_privacyObfuscatedString];
  }

  else
  {
    v38 = [(DNDClientEventDetails *)self threadIdentifier];
    v37 = [(DNDClientEventDetails *)self filterCriteria];
    v34 = v11;
  }

  v12 = [(DNDClientEventDetails *)self notifyAnyway];
  v13 = [(DNDClientEventDetails *)self behavior];
  v14 = @"Legacy";
  if (v13 != 1)
  {
    v14 = @"<unknown>";
  }

  if (!v13)
  {
    v14 = @"Default";
  }

  v15 = v14;
  v16 = [(DNDClientEventDetails *)self forwardingBehavior];
  v17 = [(DNDClientEventDetails *)self title];
  v18 = [v17 dnd_privacyObfuscatedString];
  v19 = [(DNDClientEventDetails *)self subtitle];
  v20 = [v19 dnd_privacyObfuscatedString];
  v21 = [(DNDClientEventDetails *)self body];
  v22 = [v21 dnd_privacyObfuscatedString];
  v23 = [v31 stringWithFormat:@"<%@: %p identifier: '%@'; bundleIdentifier: %@; platform: %@; type: %@; urgency: %@; sender: %@; threadIdentifier: %@; filterCritera: %@; notifyAnyway: %d; behavior: %@; forwardingBehavior: %@; title: %@; subtitle: %@; body: %@; shouldAdjustEventBehaviorForMirroring: %d>", v30, self, v33, v36, v35, v28, v27, v34, v38, v37, v12, v15, v16, v18, v20, v22, -[DNDClientEventDetails shouldAdjustEventBehaviorForMirroring](self, "shouldAdjustEventBehaviorForMirroring")];;

  if (v32)
  {

    v37 = v26;
    v38 = v34;
  }

  return v23;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDMutableClientEventDetails alloc];

  return [(DNDClientEventDetails *)v4 _initWithDetails:self];
}

- (DNDClientEventDetails)initWithCoder:(id)a3
{
  v3 = a3;
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v19 = [v3 decodeIntegerForKey:@"platform"];
  v18 = [v3 decodeIntegerForKey:@"type"];
  v17 = [v3 decodeIntegerForKey:@"urgency"];
  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"threadIdentifier"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"filterCriteria"];
  v6 = [v3 decodeBoolForKey:@"notifyAnyway"];
  v7 = [v3 decodeIntegerForKey:@"behavior"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"forwardingBehavior"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"body"];
  v12 = [v3 decodeBoolForKey:@"shouldAdjustEventBehaviorForMirroring"];

  BYTE1(v15) = v12;
  LOBYTE(v15) = v6;
  v13 = [(DNDClientEventDetails *)self _initWithIdentifier:v21 bundleIdentifier:v20 platform:v19 type:v18 urgency:v17 sender:v16 threadIdentifier:v4 filterCriteria:v5 notifyAnyway:v15 shouldAdjustEventBehaviorForMirroring:v7 behavior:v8 forwardingBehavior:v9 title:v10 subtitle:v11 body:?];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = [(DNDClientEventDetails *)self identifier];
  [v13 encodeObject:v4 forKey:@"identifier"];

  v5 = [(DNDClientEventDetails *)self bundleIdentifier];
  [v13 encodeObject:v5 forKey:@"bundleIdentifier"];

  [v13 encodeInteger:-[DNDClientEventDetails platform](self forKey:{"platform"), @"platform"}];
  [v13 encodeInteger:-[DNDClientEventDetails type](self forKey:{"type"), @"type"}];
  [v13 encodeInteger:-[DNDClientEventDetails urgency](self forKey:{"urgency"), @"urgency"}];
  v6 = [(DNDClientEventDetails *)self sender];
  [v13 encodeObject:v6 forKey:@"sender"];

  v7 = [(DNDClientEventDetails *)self threadIdentifier];
  [v13 encodeObject:v7 forKey:@"threadIdentifier"];

  v8 = [(DNDClientEventDetails *)self filterCriteria];
  [v13 encodeObject:v8 forKey:@"filterCriteria"];

  [v13 encodeBool:-[DNDClientEventDetails notifyAnyway](self forKey:{"notifyAnyway"), @"notifyAnyway"}];
  [v13 encodeInteger:-[DNDClientEventDetails behavior](self forKey:{"behavior"), @"behavior"}];
  v9 = [(DNDClientEventDetails *)self forwardingBehavior];
  [v13 encodeObject:v9 forKey:@"forwardingBehavior"];

  v10 = [(DNDClientEventDetails *)self title];
  [v13 encodeObject:v10 forKey:@"title"];

  v11 = [(DNDClientEventDetails *)self subtitle];
  [v13 encodeObject:v11 forKey:@"subtitle"];

  v12 = [(DNDClientEventDetails *)self body];
  [v13 encodeObject:v12 forKey:@"body"];

  [v13 encodeBool:-[DNDClientEventDetails shouldAdjustEventBehaviorForMirroring](self forKey:{"shouldAdjustEventBehaviorForMirroring"), @"shouldAdjustEventBehaviorForMirroring"}];
}

@end