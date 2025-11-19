@interface GDEntityResolutionCollectionCandidate
- (GDEntityResolutionCollectionCandidate)initWithCoder:(id)a3;
- (GDEntityResolutionCollectionCandidate)initWithPrimaryName:(id)a3 personToPerson:(id)a4 aliasConcat:(id)a5 entityAliasConcat:(id)a6 personFromOrganization:(id)a7 personFromLocation:(id)a8 personFromEventLocation:(id)a9 personFromEvent:(id)a10 firstPartyMsgTwoWeeks:(int64_t)a11 firstPartyMsgSixWeeks:(int64_t)a12 firstPartyMsgThreeMonths:(int64_t)a13 firstPartyMsgSixMonths:(int64_t)a14 thirdPartyMsgTwoWeeks:(int64_t)a15 thirdPartyMsgSixWeeks:(int64_t)a16 thirdPartyMsgThreeMonths:(int64_t)a17 thirdPartyMsgSixMonths:(int64_t)a18 callTwoWeeks:(int64_t)a19 callSixWeeks:(int64_t)a20 callTwelveWeeks:(int64_t)a21 callSixMonths:(int64_t)a22 identifier:(id)a23;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDEntityResolutionCollectionCandidate

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(GDEntityResolutionCollectionCandidate *)self primaryName];
  v4 = [v2 stringWithFormat:@"<GDEntityResolutionCollectionResult: %@>", v3];

  return v4;
}

- (GDEntityResolutionCollectionCandidate)initWithCoder:(id)a3
{
  v122[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_primaryName);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_aliasConcat);
    v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

    if (!v10)
    {
      v49 = [v4 error];

      if (v49)
      {
        v10 = 0;
        v45 = 0;
LABEL_51:

        goto LABEL_52;
      }

      v53 = MEMORY[0x1E696ABC0];
      v119 = *MEMORY[0x1E696A578];
      v120 = @"GDEntityResolutionCollectionResult aliasConcat is nil";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
      v16 = [v53 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v13];
      [v4 failWithError:v16];
      goto LABEL_28;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_entityAliasConcat);
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

    if (v13)
    {
      v14 = objc_opt_class();
      v15 = NSStringFromSelector(sel_personToPerson);
      v16 = [v4 decodeObjectOfClass:v14 forKey:v15];

      if (v16)
      {
        v17 = objc_opt_class();
        v18 = NSStringFromSelector(sel_personFromOrganization);
        v19 = [v4 decodeObjectOfClass:v17 forKey:v18];

        if (v19)
        {
          v104 = self;
          v20 = objc_opt_class();
          v21 = NSStringFromSelector(sel_personFromLocation);
          v22 = [v4 decodeObjectOfClass:v20 forKey:v21];

          if (v22)
          {
            v23 = objc_opt_class();
            v24 = NSStringFromSelector(sel_personFromLocation);
            v25 = [v4 decodeObjectOfClass:v23 forKey:v24];

            v102 = v25;
            if (v25)
            {
              v26 = objc_opt_class();
              v27 = NSStringFromSelector(sel_personFromEvent);
              v28 = [v4 decodeObjectOfClass:v26 forKey:v27];

              v103 = v22;
              if (v28)
              {
                v100 = v19;
                v101 = v28;
                v29 = NSStringFromSelector(sel_firstPartyMsgTwoWeeks);
                v30 = [v4 decodeIntegerForKey:v29];

                v31 = [v4 error];

                self = v104;
                if (v31)
                {
                  goto LABEL_15;
                }

                v99 = v30;
                v32 = NSStringFromSelector(sel_firstPartyMsgSixWeeks);
                v33 = [v4 decodeIntegerForKey:v32];

                v34 = [v4 error];

                if (v34)
                {
                  goto LABEL_15;
                }

                v98 = v33;
                v35 = NSStringFromSelector(sel_firstPartyMsgThreeMonths);
                v36 = [v4 decodeIntegerForKey:v35];

                v37 = [v4 error];

                if (v37)
                {
                  goto LABEL_15;
                }

                v97 = v36;
                v38 = NSStringFromSelector(sel_firstPartyMsgSixMonths);
                v39 = [v4 decodeIntegerForKey:v38];

                v40 = [v4 error];

                if (v40)
                {
                  goto LABEL_15;
                }

                v41 = NSStringFromSelector(sel_thirdPartyMsgTwoWeeks);
                v96 = [v4 decodeIntegerForKey:v41];

                v42 = [v4 error];

                if (v42 || (NSStringFromSelector(sel_thirdPartyMsgSixWeeks), v43 = objc_claimAutoreleasedReturnValue(), v95 = [v4 decodeIntegerForKey:v43], v43, objc_msgSend(v4, "error"), v44 = objc_claimAutoreleasedReturnValue(), v44, v44))
                {
LABEL_15:
                  v45 = 0;
LABEL_16:
                  v46 = v101;
                  v47 = v102;
                  v19 = v100;
LABEL_45:

                  v22 = v103;
                  goto LABEL_46;
                }

                v68 = NSStringFromSelector(sel_thirdPartyMsgThreeMonths);
                v94 = [v4 decodeIntegerForKey:v68];

                v69 = [v4 error];

                if (v69)
                {
                  goto LABEL_59;
                }

                v70 = NSStringFromSelector(sel_thirdPartyMsgSixMonths);
                v71 = [v4 decodeIntegerForKey:v70];

                v72 = [v4 error];

                if (v72)
                {
                  goto LABEL_59;
                }

                v73 = NSStringFromSelector(sel_callTwoWeeks);
                v93 = [v4 decodeIntegerForKey:v73];

                v74 = [v4 error];

                if (v74)
                {
                  goto LABEL_59;
                }

                v75 = NSStringFromSelector(sel_callSixWeeks);
                v92 = [v4 decodeIntegerForKey:v75];

                v76 = [v4 error];

                if (v76)
                {
                  goto LABEL_59;
                }

                v77 = NSStringFromSelector(sel_callTwelveWeeks);
                v91 = [v4 decodeIntegerForKey:v77];

                v78 = [v4 error];

                if (v78 || (NSStringFromSelector(sel_callSixMonths), v79 = objc_claimAutoreleasedReturnValue(), v90 = [v4 decodeIntegerForKey:v79], v79, objc_msgSend(v4, "error"), v80 = objc_claimAutoreleasedReturnValue(), v80, v80))
                {
LABEL_59:
                  v45 = 0;
                  self = v104;
                  goto LABEL_16;
                }

                v81 = objc_opt_class();
                v82 = NSStringFromSelector(sel_identifier);
                v83 = [v4 decodeObjectOfClass:v81 forKey:v82];

                if (v83)
                {
                  v63 = v83;
                  v89 = v83;
                  v88 = v39;
                  v47 = v102;
                  v19 = v100;
                  self = [(GDEntityResolutionCollectionCandidate *)v104 initWithPrimaryName:v7 personToPerson:v16 aliasConcat:v10 entityAliasConcat:v13 personFromOrganization:v100 personFromLocation:v103 personFromEventLocation:v102 personFromEvent:v101 firstPartyMsgTwoWeeks:v99 firstPartyMsgSixWeeks:v98 firstPartyMsgThreeMonths:v97 firstPartyMsgSixMonths:v88 thirdPartyMsgTwoWeeks:v96 thirdPartyMsgSixWeeks:v95 thirdPartyMsgThreeMonths:v94 thirdPartyMsgSixMonths:v71 callTwoWeeks:v93 callSixWeeks:v92 callTwelveWeeks:v91 callSixMonths:v90 identifier:v89];
                  v45 = self;
                }

                else
                {
                  v84 = [v4 error];

                  if (!v84)
                  {
                    v85 = MEMORY[0x1E696ABC0];
                    v105 = *MEMORY[0x1E696A578];
                    v106 = @"GDEntityResolutionCollectionResult identifier is nil";
                    v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
                    v87 = [v85 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v86];
                    [v4 failWithError:v87];
                  }

                  v63 = 0;
                  v45 = 0;
                  self = v104;
                  v47 = v102;
                  v19 = v100;
                }
              }

              else
              {
                v60 = [v4 error];

                self = v104;
                v47 = v102;
                if (v60)
                {
                  v46 = 0;
                  v45 = 0;
                  goto LABEL_45;
                }

                v64 = MEMORY[0x1E696ABC0];
                v107 = *MEMORY[0x1E696A578];
                v108 = @"GDEntityResolutionCollectionResult personFromEvent is nil";
                v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
                v65 = [v64 errorWithDomain:@"GDErrorDomain" code:9 userInfo:?];
                [v4 failWithError:v65];

                v101 = 0;
                v45 = 0;
              }

LABEL_44:

              v46 = v101;
              goto LABEL_45;
            }

            v58 = [v4 error];

            if (!v58)
            {
              v103 = v22;
              v62 = MEMORY[0x1E696ABC0];
              v109 = *MEMORY[0x1E696A578];
              v110 = @"GDEntityResolutionCollectionResult personFromEventLocation is nil";
              v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
              v63 = [v62 errorWithDomain:@"GDErrorDomain" code:9 userInfo:?];
              [v4 failWithError:?];
              v45 = 0;
              self = v104;
              v47 = 0;
              goto LABEL_44;
            }

            v47 = 0;
            v45 = 0;
            self = v104;
LABEL_46:

            goto LABEL_47;
          }

          v56 = [v4 error];

          if (!v56)
          {
            v103 = 0;
            v61 = MEMORY[0x1E696ABC0];
            v111 = *MEMORY[0x1E696A578];
            v112 = @"GDEntityResolutionCollectionResult personFromLocation is nil";
            v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
            v46 = [v61 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v47];
            [v4 failWithError:v46];
            v45 = 0;
            self = v104;
            goto LABEL_45;
          }

          v22 = 0;
          v45 = 0;
          self = v104;
LABEL_47:

          goto LABEL_48;
        }

        v54 = [v4 error];

        if (!v54)
        {
          v59 = MEMORY[0x1E696ABC0];
          v113 = *MEMORY[0x1E696A578];
          v114 = @"GDEntityResolutionCollectionResult personFromOrganization is nil";
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
          v47 = [v59 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v22];
          [v4 failWithError:v47];
          v45 = 0;
          goto LABEL_46;
        }

        v19 = 0;
LABEL_32:
        v45 = 0;
LABEL_48:

        goto LABEL_49;
      }

      v52 = [v4 error];

      if (!v52)
      {
        v57 = MEMORY[0x1E696ABC0];
        v115 = *MEMORY[0x1E696A578];
        v116 = @"GDEntityResolutionCollectionResult personToPerson is nil";
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
        v22 = [v57 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v19];
        [v4 failWithError:v22];
        v45 = 0;
        goto LABEL_47;
      }

      v16 = 0;
LABEL_28:
      v45 = 0;
LABEL_49:

      goto LABEL_50;
    }

    v50 = [v4 error];

    if (!v50)
    {
      v55 = MEMORY[0x1E696ABC0];
      v117 = *MEMORY[0x1E696A578];
      v118 = @"GDEntityResolutionCollectionResult entityAliasConcat is nil";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
      v19 = [v55 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v16];
      [v4 failWithError:v19];
      goto LABEL_32;
    }

    v13 = 0;
LABEL_24:
    v45 = 0;
LABEL_50:

    goto LABEL_51;
  }

  v48 = [v4 error];

  if (!v48)
  {
    v51 = MEMORY[0x1E696ABC0];
    v121 = *MEMORY[0x1E696A578];
    v122[0] = @"GDEntityResolutionCollectionResult primaryName is nil";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:&v121 count:1];
    v13 = [v51 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v10];
    [v4 failWithError:v13];
    goto LABEL_24;
  }

  v45 = 0;
LABEL_52:

  v66 = *MEMORY[0x1E69E9840];
  return v45;
}

- (void)encodeWithCoder:(id)a3
{
  primaryName = self->_primaryName;
  v5 = a3;
  v6 = NSStringFromSelector(sel_primaryName);
  [v5 encodeObject:primaryName forKey:v6];

  aliasConcat = self->_aliasConcat;
  v8 = NSStringFromSelector(sel_aliasConcat);
  [v5 encodeObject:aliasConcat forKey:v8];

  entityAliasConcat = self->_entityAliasConcat;
  v10 = NSStringFromSelector(sel_entityAliasConcat);
  [v5 encodeObject:entityAliasConcat forKey:v10];

  personToPerson = self->_personToPerson;
  v12 = NSStringFromSelector(sel_personToPerson);
  [v5 encodeObject:personToPerson forKey:v12];

  personFromOrganization = self->_personFromOrganization;
  v14 = NSStringFromSelector(sel_personFromOrganization);
  [v5 encodeObject:personFromOrganization forKey:v14];

  personFromLocation = self->_personFromLocation;
  v16 = NSStringFromSelector(sel_personFromLocation);
  [v5 encodeObject:personFromLocation forKey:v16];

  personFromEventLocation = self->_personFromEventLocation;
  v18 = NSStringFromSelector(sel_personFromEvent);
  [v5 encodeObject:personFromEventLocation forKey:v18];

  personFromEvent = self->_personFromEvent;
  v20 = NSStringFromSelector(sel_personFromEvent);
  [v5 encodeObject:personFromEvent forKey:v20];

  firstPartyMsgTwoWeeks = self->_firstPartyMsgTwoWeeks;
  v22 = NSStringFromSelector(sel_firstPartyMsgTwoWeeks);
  [v5 encodeInteger:firstPartyMsgTwoWeeks forKey:v22];

  firstPartyMsgSixWeeks = self->_firstPartyMsgSixWeeks;
  v24 = NSStringFromSelector(sel_firstPartyMsgSixWeeks);
  [v5 encodeInteger:firstPartyMsgSixWeeks forKey:v24];

  firstPartyMsgThreeMonths = self->_firstPartyMsgThreeMonths;
  v26 = NSStringFromSelector(sel_firstPartyMsgThreeMonths);
  [v5 encodeInteger:firstPartyMsgThreeMonths forKey:v26];

  firstPartyMsgSixMonths = self->_firstPartyMsgSixMonths;
  v28 = NSStringFromSelector(sel_firstPartyMsgSixMonths);
  [v5 encodeInteger:firstPartyMsgSixMonths forKey:v28];

  thirdPartyMsgTwoWeeks = self->_thirdPartyMsgTwoWeeks;
  v30 = NSStringFromSelector(sel_thirdPartyMsgTwoWeeks);
  [v5 encodeInteger:thirdPartyMsgTwoWeeks forKey:v30];

  thirdPartyMsgSixWeeks = self->_thirdPartyMsgSixWeeks;
  v32 = NSStringFromSelector(sel_thirdPartyMsgSixWeeks);
  [v5 encodeInteger:thirdPartyMsgSixWeeks forKey:v32];

  thirdPartyMsgThreeMonths = self->_thirdPartyMsgThreeMonths;
  v34 = NSStringFromSelector(sel_thirdPartyMsgThreeMonths);
  [v5 encodeInteger:thirdPartyMsgThreeMonths forKey:v34];

  thirdPartyMsgSixMonths = self->_thirdPartyMsgSixMonths;
  v36 = NSStringFromSelector(sel_thirdPartyMsgSixMonths);
  [v5 encodeInteger:thirdPartyMsgSixMonths forKey:v36];

  callTwoWeeks = self->_callTwoWeeks;
  v38 = NSStringFromSelector(sel_callTwoWeeks);
  [v5 encodeInteger:callTwoWeeks forKey:v38];

  callSixWeeks = self->_callSixWeeks;
  v40 = NSStringFromSelector(sel_callSixWeeks);
  [v5 encodeInteger:callSixWeeks forKey:v40];

  callTwelveWeeks = self->_callTwelveWeeks;
  v42 = NSStringFromSelector(sel_callTwelveWeeks);
  [v5 encodeInteger:callTwelveWeeks forKey:v42];

  callSixMonths = self->_callSixMonths;
  v44 = NSStringFromSelector(sel_callSixMonths);
  [v5 encodeInteger:callSixMonths forKey:v44];

  identifier = self->_identifier;
  v46 = NSStringFromSelector(sel_identifier);
  [v5 encodeObject:identifier forKey:v46];
}

- (GDEntityResolutionCollectionCandidate)initWithPrimaryName:(id)a3 personToPerson:(id)a4 aliasConcat:(id)a5 entityAliasConcat:(id)a6 personFromOrganization:(id)a7 personFromLocation:(id)a8 personFromEventLocation:(id)a9 personFromEvent:(id)a10 firstPartyMsgTwoWeeks:(int64_t)a11 firstPartyMsgSixWeeks:(int64_t)a12 firstPartyMsgThreeMonths:(int64_t)a13 firstPartyMsgSixMonths:(int64_t)a14 thirdPartyMsgTwoWeeks:(int64_t)a15 thirdPartyMsgSixWeeks:(int64_t)a16 thirdPartyMsgThreeMonths:(int64_t)a17 thirdPartyMsgSixMonths:(int64_t)a18 callTwoWeeks:(int64_t)a19 callSixWeeks:(int64_t)a20 callTwelveWeeks:(int64_t)a21 callSixMonths:(int64_t)a22 identifier:(id)a23
{
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v35 = a10;
  v36 = a23;
  v57.receiver = self;
  v57.super_class = GDEntityResolutionCollectionCandidate;
  v37 = [(GDEntityResolutionCollectionCandidate *)&v57 init];
  if (v37)
  {
    v38 = [v29 copy];
    primaryName = v37->_primaryName;
    v37->_primaryName = v38;

    v40 = [v30 copy];
    personToPerson = v37->_personToPerson;
    v37->_personToPerson = v40;

    v42 = [v31 copy];
    aliasConcat = v37->_aliasConcat;
    v37->_aliasConcat = v42;

    v44 = [v32 copy];
    entityAliasConcat = v37->_entityAliasConcat;
    v37->_entityAliasConcat = v44;

    v46 = [v33 copy];
    personFromOrganization = v37->_personFromOrganization;
    v37->_personFromOrganization = v46;

    v48 = [v34 copy];
    personFromLocation = v37->_personFromLocation;
    v37->_personFromLocation = v48;

    v50 = [v35 copy];
    personFromEventLocation = v37->_personFromEventLocation;
    v37->_personFromEventLocation = v50;

    v52 = [v35 copy];
    personFromEvent = v37->_personFromEvent;
    v37->_personFromEvent = v52;

    v37->_firstPartyMsgTwoWeeks = a11;
    v37->_firstPartyMsgSixWeeks = a12;
    v37->_firstPartyMsgThreeMonths = a13;
    v37->_firstPartyMsgSixMonths = a14;
    v37->_thirdPartyMsgTwoWeeks = a15;
    v37->_thirdPartyMsgSixWeeks = a16;
    v37->_thirdPartyMsgThreeMonths = a17;
    v37->_thirdPartyMsgSixMonths = a18;
    v37->_callTwoWeeks = a19;
    v37->_callSixWeeks = a20;
    v37->_callTwelveWeeks = a21;
    v37->_callSixMonths = a22;
    v54 = [v36 copy];
    identifier = v37->_identifier;
    v37->_identifier = v54;
  }

  return v37;
}

@end