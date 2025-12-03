@interface GDEntityResolutionCollectionCandidate
- (GDEntityResolutionCollectionCandidate)initWithCoder:(id)coder;
- (GDEntityResolutionCollectionCandidate)initWithPrimaryName:(id)name personToPerson:(id)person aliasConcat:(id)concat entityAliasConcat:(id)aliasConcat personFromOrganization:(id)organization personFromLocation:(id)location personFromEventLocation:(id)eventLocation personFromEvent:(id)self0 firstPartyMsgTwoWeeks:(int64_t)self1 firstPartyMsgSixWeeks:(int64_t)self2 firstPartyMsgThreeMonths:(int64_t)self3 firstPartyMsgSixMonths:(int64_t)self4 thirdPartyMsgTwoWeeks:(int64_t)self5 thirdPartyMsgSixWeeks:(int64_t)self6 thirdPartyMsgThreeMonths:(int64_t)self7 thirdPartyMsgSixMonths:(int64_t)self8 callTwoWeeks:(int64_t)self9 callSixWeeks:(int64_t)callSixWeeks callTwelveWeeks:(int64_t)twelveWeeks callSixMonths:(int64_t)callSixMonths identifier:(id)identifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDEntityResolutionCollectionCandidate

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  primaryName = [(GDEntityResolutionCollectionCandidate *)self primaryName];
  v4 = [v2 stringWithFormat:@"<GDEntityResolutionCollectionResult: %@>", primaryName];

  return v4;
}

- (GDEntityResolutionCollectionCandidate)initWithCoder:(id)coder
{
  v122[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_primaryName);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_aliasConcat);
    v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

    if (!v10)
    {
      error = [coderCopy error];

      if (error)
      {
        v10 = 0;
        selfCopy2 = 0;
LABEL_51:

        goto LABEL_52;
      }

      v53 = MEMORY[0x1E696ABC0];
      v119 = *MEMORY[0x1E696A578];
      v120 = @"GDEntityResolutionCollectionResult aliasConcat is nil";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
      v16 = [v53 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v13];
      [coderCopy failWithError:v16];
      goto LABEL_28;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_entityAliasConcat);
    v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

    if (v13)
    {
      v14 = objc_opt_class();
      v15 = NSStringFromSelector(sel_personToPerson);
      v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];

      if (v16)
      {
        v17 = objc_opt_class();
        v18 = NSStringFromSelector(sel_personFromOrganization);
        v19 = [coderCopy decodeObjectOfClass:v17 forKey:v18];

        if (v19)
        {
          selfCopy = self;
          v20 = objc_opt_class();
          v21 = NSStringFromSelector(sel_personFromLocation);
          v22 = [coderCopy decodeObjectOfClass:v20 forKey:v21];

          if (v22)
          {
            v23 = objc_opt_class();
            v24 = NSStringFromSelector(sel_personFromLocation);
            v25 = [coderCopy decodeObjectOfClass:v23 forKey:v24];

            v102 = v25;
            if (v25)
            {
              v26 = objc_opt_class();
              v27 = NSStringFromSelector(sel_personFromEvent);
              v28 = [coderCopy decodeObjectOfClass:v26 forKey:v27];

              v103 = v22;
              if (v28)
              {
                v100 = v19;
                v101 = v28;
                v29 = NSStringFromSelector(sel_firstPartyMsgTwoWeeks);
                v30 = [coderCopy decodeIntegerForKey:v29];

                error2 = [coderCopy error];

                self = selfCopy;
                if (error2)
                {
                  goto LABEL_15;
                }

                v99 = v30;
                v32 = NSStringFromSelector(sel_firstPartyMsgSixWeeks);
                v33 = [coderCopy decodeIntegerForKey:v32];

                error3 = [coderCopy error];

                if (error3)
                {
                  goto LABEL_15;
                }

                v98 = v33;
                v35 = NSStringFromSelector(sel_firstPartyMsgThreeMonths);
                v36 = [coderCopy decodeIntegerForKey:v35];

                error4 = [coderCopy error];

                if (error4)
                {
                  goto LABEL_15;
                }

                v97 = v36;
                v38 = NSStringFromSelector(sel_firstPartyMsgSixMonths);
                v39 = [coderCopy decodeIntegerForKey:v38];

                error5 = [coderCopy error];

                if (error5)
                {
                  goto LABEL_15;
                }

                v41 = NSStringFromSelector(sel_thirdPartyMsgTwoWeeks);
                v96 = [coderCopy decodeIntegerForKey:v41];

                error6 = [coderCopy error];

                if (error6 || (NSStringFromSelector(sel_thirdPartyMsgSixWeeks), v43 = objc_claimAutoreleasedReturnValue(), v95 = [coderCopy decodeIntegerForKey:v43], v43, objc_msgSend(coderCopy, "error"), v44 = objc_claimAutoreleasedReturnValue(), v44, v44))
                {
LABEL_15:
                  selfCopy2 = 0;
LABEL_16:
                  v46 = v101;
                  v47 = v102;
                  v19 = v100;
LABEL_45:

                  v22 = v103;
                  goto LABEL_46;
                }

                v68 = NSStringFromSelector(sel_thirdPartyMsgThreeMonths);
                v94 = [coderCopy decodeIntegerForKey:v68];

                error7 = [coderCopy error];

                if (error7)
                {
                  goto LABEL_59;
                }

                v70 = NSStringFromSelector(sel_thirdPartyMsgSixMonths);
                v71 = [coderCopy decodeIntegerForKey:v70];

                error8 = [coderCopy error];

                if (error8)
                {
                  goto LABEL_59;
                }

                v73 = NSStringFromSelector(sel_callTwoWeeks);
                v93 = [coderCopy decodeIntegerForKey:v73];

                error9 = [coderCopy error];

                if (error9)
                {
                  goto LABEL_59;
                }

                v75 = NSStringFromSelector(sel_callSixWeeks);
                v92 = [coderCopy decodeIntegerForKey:v75];

                error10 = [coderCopy error];

                if (error10)
                {
                  goto LABEL_59;
                }

                v77 = NSStringFromSelector(sel_callTwelveWeeks);
                v91 = [coderCopy decodeIntegerForKey:v77];

                error11 = [coderCopy error];

                if (error11 || (NSStringFromSelector(sel_callSixMonths), v79 = objc_claimAutoreleasedReturnValue(), v90 = [coderCopy decodeIntegerForKey:v79], v79, objc_msgSend(coderCopy, "error"), v80 = objc_claimAutoreleasedReturnValue(), v80, v80))
                {
LABEL_59:
                  selfCopy2 = 0;
                  self = selfCopy;
                  goto LABEL_16;
                }

                v81 = objc_opt_class();
                v82 = NSStringFromSelector(sel_identifier);
                v83 = [coderCopy decodeObjectOfClass:v81 forKey:v82];

                if (v83)
                {
                  v63 = v83;
                  v89 = v83;
                  v88 = v39;
                  v47 = v102;
                  v19 = v100;
                  self = [(GDEntityResolutionCollectionCandidate *)selfCopy initWithPrimaryName:v7 personToPerson:v16 aliasConcat:v10 entityAliasConcat:v13 personFromOrganization:v100 personFromLocation:v103 personFromEventLocation:v102 personFromEvent:v101 firstPartyMsgTwoWeeks:v99 firstPartyMsgSixWeeks:v98 firstPartyMsgThreeMonths:v97 firstPartyMsgSixMonths:v88 thirdPartyMsgTwoWeeks:v96 thirdPartyMsgSixWeeks:v95 thirdPartyMsgThreeMonths:v94 thirdPartyMsgSixMonths:v71 callTwoWeeks:v93 callSixWeeks:v92 callTwelveWeeks:v91 callSixMonths:v90 identifier:v89];
                  selfCopy2 = self;
                }

                else
                {
                  error12 = [coderCopy error];

                  if (!error12)
                  {
                    v85 = MEMORY[0x1E696ABC0];
                    v105 = *MEMORY[0x1E696A578];
                    v106 = @"GDEntityResolutionCollectionResult identifier is nil";
                    v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
                    v87 = [v85 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v86];
                    [coderCopy failWithError:v87];
                  }

                  v63 = 0;
                  selfCopy2 = 0;
                  self = selfCopy;
                  v47 = v102;
                  v19 = v100;
                }
              }

              else
              {
                error13 = [coderCopy error];

                self = selfCopy;
                v47 = v102;
                if (error13)
                {
                  v46 = 0;
                  selfCopy2 = 0;
                  goto LABEL_45;
                }

                v64 = MEMORY[0x1E696ABC0];
                v107 = *MEMORY[0x1E696A578];
                v108 = @"GDEntityResolutionCollectionResult personFromEvent is nil";
                v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
                v65 = [v64 errorWithDomain:@"GDErrorDomain" code:9 userInfo:?];
                [coderCopy failWithError:v65];

                v101 = 0;
                selfCopy2 = 0;
              }

LABEL_44:

              v46 = v101;
              goto LABEL_45;
            }

            error14 = [coderCopy error];

            if (!error14)
            {
              v103 = v22;
              v62 = MEMORY[0x1E696ABC0];
              v109 = *MEMORY[0x1E696A578];
              v110 = @"GDEntityResolutionCollectionResult personFromEventLocation is nil";
              v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
              v63 = [v62 errorWithDomain:@"GDErrorDomain" code:9 userInfo:?];
              [coderCopy failWithError:?];
              selfCopy2 = 0;
              self = selfCopy;
              v47 = 0;
              goto LABEL_44;
            }

            v47 = 0;
            selfCopy2 = 0;
            self = selfCopy;
LABEL_46:

            goto LABEL_47;
          }

          error15 = [coderCopy error];

          if (!error15)
          {
            v103 = 0;
            v61 = MEMORY[0x1E696ABC0];
            v111 = *MEMORY[0x1E696A578];
            v112 = @"GDEntityResolutionCollectionResult personFromLocation is nil";
            v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
            v46 = [v61 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v47];
            [coderCopy failWithError:v46];
            selfCopy2 = 0;
            self = selfCopy;
            goto LABEL_45;
          }

          v22 = 0;
          selfCopy2 = 0;
          self = selfCopy;
LABEL_47:

          goto LABEL_48;
        }

        error16 = [coderCopy error];

        if (!error16)
        {
          v59 = MEMORY[0x1E696ABC0];
          v113 = *MEMORY[0x1E696A578];
          v114 = @"GDEntityResolutionCollectionResult personFromOrganization is nil";
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
          v47 = [v59 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v22];
          [coderCopy failWithError:v47];
          selfCopy2 = 0;
          goto LABEL_46;
        }

        v19 = 0;
LABEL_32:
        selfCopy2 = 0;
LABEL_48:

        goto LABEL_49;
      }

      error17 = [coderCopy error];

      if (!error17)
      {
        v57 = MEMORY[0x1E696ABC0];
        v115 = *MEMORY[0x1E696A578];
        v116 = @"GDEntityResolutionCollectionResult personToPerson is nil";
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
        v22 = [v57 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v19];
        [coderCopy failWithError:v22];
        selfCopy2 = 0;
        goto LABEL_47;
      }

      v16 = 0;
LABEL_28:
      selfCopy2 = 0;
LABEL_49:

      goto LABEL_50;
    }

    error18 = [coderCopy error];

    if (!error18)
    {
      v55 = MEMORY[0x1E696ABC0];
      v117 = *MEMORY[0x1E696A578];
      v118 = @"GDEntityResolutionCollectionResult entityAliasConcat is nil";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
      v19 = [v55 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v16];
      [coderCopy failWithError:v19];
      goto LABEL_32;
    }

    v13 = 0;
LABEL_24:
    selfCopy2 = 0;
LABEL_50:

    goto LABEL_51;
  }

  error19 = [coderCopy error];

  if (!error19)
  {
    v51 = MEMORY[0x1E696ABC0];
    v121 = *MEMORY[0x1E696A578];
    v122[0] = @"GDEntityResolutionCollectionResult primaryName is nil";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:&v121 count:1];
    v13 = [v51 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v10];
    [coderCopy failWithError:v13];
    goto LABEL_24;
  }

  selfCopy2 = 0;
LABEL_52:

  v66 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (void)encodeWithCoder:(id)coder
{
  primaryName = self->_primaryName;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_primaryName);
  [coderCopy encodeObject:primaryName forKey:v6];

  aliasConcat = self->_aliasConcat;
  v8 = NSStringFromSelector(sel_aliasConcat);
  [coderCopy encodeObject:aliasConcat forKey:v8];

  entityAliasConcat = self->_entityAliasConcat;
  v10 = NSStringFromSelector(sel_entityAliasConcat);
  [coderCopy encodeObject:entityAliasConcat forKey:v10];

  personToPerson = self->_personToPerson;
  v12 = NSStringFromSelector(sel_personToPerson);
  [coderCopy encodeObject:personToPerson forKey:v12];

  personFromOrganization = self->_personFromOrganization;
  v14 = NSStringFromSelector(sel_personFromOrganization);
  [coderCopy encodeObject:personFromOrganization forKey:v14];

  personFromLocation = self->_personFromLocation;
  v16 = NSStringFromSelector(sel_personFromLocation);
  [coderCopy encodeObject:personFromLocation forKey:v16];

  personFromEventLocation = self->_personFromEventLocation;
  v18 = NSStringFromSelector(sel_personFromEvent);
  [coderCopy encodeObject:personFromEventLocation forKey:v18];

  personFromEvent = self->_personFromEvent;
  v20 = NSStringFromSelector(sel_personFromEvent);
  [coderCopy encodeObject:personFromEvent forKey:v20];

  firstPartyMsgTwoWeeks = self->_firstPartyMsgTwoWeeks;
  v22 = NSStringFromSelector(sel_firstPartyMsgTwoWeeks);
  [coderCopy encodeInteger:firstPartyMsgTwoWeeks forKey:v22];

  firstPartyMsgSixWeeks = self->_firstPartyMsgSixWeeks;
  v24 = NSStringFromSelector(sel_firstPartyMsgSixWeeks);
  [coderCopy encodeInteger:firstPartyMsgSixWeeks forKey:v24];

  firstPartyMsgThreeMonths = self->_firstPartyMsgThreeMonths;
  v26 = NSStringFromSelector(sel_firstPartyMsgThreeMonths);
  [coderCopy encodeInteger:firstPartyMsgThreeMonths forKey:v26];

  firstPartyMsgSixMonths = self->_firstPartyMsgSixMonths;
  v28 = NSStringFromSelector(sel_firstPartyMsgSixMonths);
  [coderCopy encodeInteger:firstPartyMsgSixMonths forKey:v28];

  thirdPartyMsgTwoWeeks = self->_thirdPartyMsgTwoWeeks;
  v30 = NSStringFromSelector(sel_thirdPartyMsgTwoWeeks);
  [coderCopy encodeInteger:thirdPartyMsgTwoWeeks forKey:v30];

  thirdPartyMsgSixWeeks = self->_thirdPartyMsgSixWeeks;
  v32 = NSStringFromSelector(sel_thirdPartyMsgSixWeeks);
  [coderCopy encodeInteger:thirdPartyMsgSixWeeks forKey:v32];

  thirdPartyMsgThreeMonths = self->_thirdPartyMsgThreeMonths;
  v34 = NSStringFromSelector(sel_thirdPartyMsgThreeMonths);
  [coderCopy encodeInteger:thirdPartyMsgThreeMonths forKey:v34];

  thirdPartyMsgSixMonths = self->_thirdPartyMsgSixMonths;
  v36 = NSStringFromSelector(sel_thirdPartyMsgSixMonths);
  [coderCopy encodeInteger:thirdPartyMsgSixMonths forKey:v36];

  callTwoWeeks = self->_callTwoWeeks;
  v38 = NSStringFromSelector(sel_callTwoWeeks);
  [coderCopy encodeInteger:callTwoWeeks forKey:v38];

  callSixWeeks = self->_callSixWeeks;
  v40 = NSStringFromSelector(sel_callSixWeeks);
  [coderCopy encodeInteger:callSixWeeks forKey:v40];

  callTwelveWeeks = self->_callTwelveWeeks;
  v42 = NSStringFromSelector(sel_callTwelveWeeks);
  [coderCopy encodeInteger:callTwelveWeeks forKey:v42];

  callSixMonths = self->_callSixMonths;
  v44 = NSStringFromSelector(sel_callSixMonths);
  [coderCopy encodeInteger:callSixMonths forKey:v44];

  identifier = self->_identifier;
  v46 = NSStringFromSelector(sel_identifier);
  [coderCopy encodeObject:identifier forKey:v46];
}

- (GDEntityResolutionCollectionCandidate)initWithPrimaryName:(id)name personToPerson:(id)person aliasConcat:(id)concat entityAliasConcat:(id)aliasConcat personFromOrganization:(id)organization personFromLocation:(id)location personFromEventLocation:(id)eventLocation personFromEvent:(id)self0 firstPartyMsgTwoWeeks:(int64_t)self1 firstPartyMsgSixWeeks:(int64_t)self2 firstPartyMsgThreeMonths:(int64_t)self3 firstPartyMsgSixMonths:(int64_t)self4 thirdPartyMsgTwoWeeks:(int64_t)self5 thirdPartyMsgSixWeeks:(int64_t)self6 thirdPartyMsgThreeMonths:(int64_t)self7 thirdPartyMsgSixMonths:(int64_t)self8 callTwoWeeks:(int64_t)self9 callSixWeeks:(int64_t)callSixWeeks callTwelveWeeks:(int64_t)twelveWeeks callSixMonths:(int64_t)callSixMonths identifier:(id)identifier
{
  nameCopy = name;
  personCopy = person;
  concatCopy = concat;
  aliasConcatCopy = aliasConcat;
  organizationCopy = organization;
  locationCopy = location;
  eventCopy = event;
  identifierCopy = identifier;
  v57.receiver = self;
  v57.super_class = GDEntityResolutionCollectionCandidate;
  v37 = [(GDEntityResolutionCollectionCandidate *)&v57 init];
  if (v37)
  {
    v38 = [nameCopy copy];
    primaryName = v37->_primaryName;
    v37->_primaryName = v38;

    v40 = [personCopy copy];
    personToPerson = v37->_personToPerson;
    v37->_personToPerson = v40;

    v42 = [concatCopy copy];
    aliasConcat = v37->_aliasConcat;
    v37->_aliasConcat = v42;

    v44 = [aliasConcatCopy copy];
    entityAliasConcat = v37->_entityAliasConcat;
    v37->_entityAliasConcat = v44;

    v46 = [organizationCopy copy];
    personFromOrganization = v37->_personFromOrganization;
    v37->_personFromOrganization = v46;

    v48 = [locationCopy copy];
    personFromLocation = v37->_personFromLocation;
    v37->_personFromLocation = v48;

    v50 = [eventCopy copy];
    personFromEventLocation = v37->_personFromEventLocation;
    v37->_personFromEventLocation = v50;

    v52 = [eventCopy copy];
    personFromEvent = v37->_personFromEvent;
    v37->_personFromEvent = v52;

    v37->_firstPartyMsgTwoWeeks = weeks;
    v37->_firstPartyMsgSixWeeks = sixWeeks;
    v37->_firstPartyMsgThreeMonths = months;
    v37->_firstPartyMsgSixMonths = sixMonths;
    v37->_thirdPartyMsgTwoWeeks = twoWeeks;
    v37->_thirdPartyMsgSixWeeks = msgSixWeeks;
    v37->_thirdPartyMsgThreeMonths = threeMonths;
    v37->_thirdPartyMsgSixMonths = msgSixMonths;
    v37->_callTwoWeeks = callTwoWeeks;
    v37->_callSixWeeks = callSixWeeks;
    v37->_callTwelveWeeks = twelveWeeks;
    v37->_callSixMonths = callSixMonths;
    v54 = [identifierCopy copy];
    identifier = v37->_identifier;
    v37->_identifier = v54;
  }

  return v37;
}

@end