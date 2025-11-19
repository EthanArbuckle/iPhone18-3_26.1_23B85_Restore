@interface CCContactContent
+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3;
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCContactContent)initWithGivenName:(id)a3 middleName:(id)a4 familyName:(id)a5 previousFamilyName:(id)a6 nickname:(id)a7 namePrefix:(id)a8 nameSuffix:(id)a9 phoneNumbers:(id)a10 emailAddresses:(id)a11 postalAddresses:(id)a12 urlAddresses:(id)a13 socialProfiles:(id)a14 instantMessageAddresses:(id)a15 relations:(id)a16 organizationName:(id)a17 departmentName:(id)a18 jobTitle:(id)a19 phoneticGivenName:(id)a20 phoneticMiddleName:(id)a21 phoneticFamilyName:(id)a22 phoneticOrganizationName:(id)a23 note:(id)a24 birthday:(id)a25 nonGregorianBirthday:(id)a26 dates:(id)a27 error:(id *)a28;
- (CCContactContent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCContactDate)birthday;
- (CCContactDate)nonGregorianBirthday;
- (NSArray)dates;
- (NSArray)emailAddresses;
- (NSArray)instantMessageAddresses;
- (NSArray)phoneNumbers;
- (NSArray)postalAddresses;
- (NSArray)relations;
- (NSArray)socialProfiles;
- (NSArray)urlAddresses;
- (NSString)departmentName;
- (NSString)familyName;
- (NSString)givenName;
- (NSString)jobTitle;
- (NSString)middleName;
- (NSString)namePrefix;
- (NSString)nameSuffix;
- (NSString)nickname;
- (NSString)note;
- (NSString)organizationName;
- (NSString)phoneticFamilyName;
- (NSString)phoneticGivenName;
- (NSString)phoneticMiddleName;
- (NSString)phoneticOrganizationName;
- (NSString)previousFamilyName;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCContactContent

- (CCContactContent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v265 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  v256 = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"givenName"];
    v10 = [v6 objectForKeyedSubscript:@"middleName"];
    v205 = [v6 objectForKeyedSubscript:@"familyName"];
    v204 = [v6 objectForKeyedSubscript:@"previousFamilyName"];
    v203 = [v6 objectForKeyedSubscript:@"nickname"];
    v202 = [v6 objectForKeyedSubscript:@"namePrefix"];
    v201 = [v6 objectForKeyedSubscript:@"nameSuffix"];
    v11 = [v6 objectForKeyedSubscript:@"phoneNumbers"];
    if (v11)
    {
      v12 = v11;
      objc_opt_class();
      v255 = v8;
      v13 = CCValidateIsInstanceOfExpectedClass();
      v14 = v8;

      if ((v13 & 1) == 0)
      {
        CCSetError();
        v42 = 0;
        v15 = v12;
LABEL_162:

        v8 = v14;
        goto LABEL_163;
      }

      obj = a4;
      v195 = v10;
      v172 = self;
      v15 = objc_opt_new();
      v251 = 0u;
      v252 = 0u;
      v253 = 0u;
      v254 = 0u;
      v16 = v12;
      v17 = [v16 countByEnumeratingWithState:&v251 objects:v264 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v252;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v252 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v251 + 1) + 8 * i);
            v22 = [CCContactPhoneNumber alloc];
            v250 = 0;
            v23 = [(CCContactPhoneNumber *)v22 initWithJSONDictionary:v21 error:&v250];
            v24 = v250;
            if (v23)
            {
              v25 = v24 == 0;
            }

            else
            {
              v25 = 0;
            }

            if (!v25)
            {
              v41 = v24;
              CCSetError();

              v42 = 0;
              v15 = v16;
              self = v172;
              v10 = v195;
              goto LABEL_162;
            }

            [v15 addObject:v23];
          }

          v18 = [v16 countByEnumeratingWithState:&v251 objects:v264 count:16];
        }

        while (v18);
      }

      self = v172;
      a4 = obj;
    }

    else
    {
      v15 = 0;
      v14 = v8;
    }

    v26 = [v6 objectForKeyedSubscript:@"emailAddresses"];
    if (v26)
    {
      v27 = v26;
      objc_opt_class();
      v249 = v14;
      v28 = CCValidateIsInstanceOfExpectedClass();
      v29 = v14;

      if ((v28 & 1) == 0)
      {
        CCSetError();
        v42 = 0;
        v30 = v27;
LABEL_161:

        v14 = v29;
        goto LABEL_162;
      }

      obja = a4;
      v188 = v9;
      v196 = v10;
      v173 = self;
      v30 = objc_opt_new();
      v245 = 0u;
      v246 = 0u;
      v247 = 0u;
      v248 = 0u;
      v31 = v27;
      v32 = [v31 countByEnumeratingWithState:&v245 objects:v263 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v246;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v246 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v245 + 1) + 8 * j);
            v37 = [CCContactEmailAddress alloc];
            v244 = 0;
            v38 = [(CCContactEmailAddress *)v37 initWithJSONDictionary:v36 error:&v244];
            v39 = v244;
            if (v38)
            {
              v40 = v39 == 0;
            }

            else
            {
              v40 = 0;
            }

            if (!v40)
            {
              v57 = v39;
              CCSetError();

              v42 = 0;
              v30 = v31;
              self = v173;
              v9 = v188;
              v10 = v196;
              goto LABEL_161;
            }

            [v30 addObject:v38];
          }

          v33 = [v31 countByEnumeratingWithState:&v245 objects:v263 count:16];
        }

        while (v33);
      }

      a4 = obja;
      v9 = v188;
    }

    else
    {
      v196 = v10;
      v30 = 0;
      v29 = v14;
    }

    v43 = [v6 objectForKeyedSubscript:@"postalAddresses"];
    if (v43)
    {
      v44 = v43;
      objc_opt_class();
      v243 = v29;
      v45 = CCValidateIsInstanceOfExpectedClass();
      v46 = v29;

      if ((v45 & 1) == 0)
      {
        CCSetError();
        v42 = 0;
        v47 = v44;
        v10 = v196;
LABEL_160:

        v29 = v46;
        goto LABEL_161;
      }

      objb = a4;
      v189 = v9;
      v174 = self;
      v200 = objc_opt_new();
      v239 = 0u;
      v240 = 0u;
      v241 = 0u;
      v242 = 0u;
      v47 = v44;
      v48 = [v47 countByEnumeratingWithState:&v239 objects:v262 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v240;
        do
        {
          for (k = 0; k != v49; ++k)
          {
            if (*v240 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = *(*(&v239 + 1) + 8 * k);
            v53 = [CCContactPostalAddress alloc];
            v238 = 0;
            v54 = [(CCContactPostalAddress *)v53 initWithJSONDictionary:v52 error:&v238];
            v55 = v238;
            if (v54)
            {
              v56 = v55 == 0;
            }

            else
            {
              v56 = 0;
            }

            if (!v56)
            {
              v72 = v55;
              CCSetError();

              v42 = 0;
              self = v174;
              v9 = v189;
              v10 = v196;
              goto LABEL_160;
            }

            [v200 addObject:v54];
          }

          v49 = [v47 countByEnumeratingWithState:&v239 objects:v262 count:16];
        }

        while (v49);
      }

      self = v174;
      a4 = objb;
      v9 = v189;
    }

    else
    {
      v200 = 0;
      v46 = v29;
    }

    v58 = [v6 objectForKeyedSubscript:@"urlAddresses"];
    if (v58)
    {
      v59 = v58;
      objc_opt_class();
      v237 = v46;
      v60 = CCValidateIsInstanceOfExpectedClass();
      v61 = v46;

      if ((v60 & 1) == 0)
      {
        CCSetError();
        v42 = 0;
        v62 = v59;
        v10 = v196;
LABEL_159:

        v46 = v61;
        v47 = v200;
        goto LABEL_160;
      }

      objc = a4;
      v190 = v9;
      v175 = self;
      v171 = objc_opt_new();
      v233 = 0u;
      v234 = 0u;
      v235 = 0u;
      v236 = 0u;
      v62 = v59;
      v63 = [v62 countByEnumeratingWithState:&v233 objects:v261 count:16];
      if (v63)
      {
        v64 = v63;
        v65 = *v234;
        do
        {
          for (m = 0; m != v64; ++m)
          {
            if (*v234 != v65)
            {
              objc_enumerationMutation(v62);
            }

            v67 = *(*(&v233 + 1) + 8 * m);
            v68 = [CCContactURLAddress alloc];
            v232 = 0;
            v69 = [(CCContactURLAddress *)v68 initWithJSONDictionary:v67 error:&v232];
            v70 = v232;
            if (v69)
            {
              v71 = v70 == 0;
            }

            else
            {
              v71 = 0;
            }

            if (!v71)
            {
              v89 = v70;
              CCSetError();

              v42 = 0;
              self = v175;
              v9 = v190;
              v10 = v196;
              goto LABEL_159;
            }

            [v171 addObject:v69];
          }

          v64 = [v62 countByEnumeratingWithState:&v233 objects:v261 count:16];
        }

        while (v64);
      }

      self = v175;
      a4 = objc;
      v9 = v190;
    }

    else
    {
      v171 = 0;
      v61 = v46;
    }

    v73 = [v6 objectForKeyedSubscript:@"socialProfiles"];
    if (v73)
    {
      v74 = v73;
      objc_opt_class();
      v231 = v61;
      v75 = CCValidateIsInstanceOfExpectedClass();
      v76 = v61;

      if ((v75 & 1) == 0)
      {
        CCSetError();
        v42 = 0;
        v77 = v74;
        v10 = v196;
LABEL_158:

        v61 = v76;
        v62 = v171;
        goto LABEL_159;
      }

      v168 = v76;
      objd = a4;
      v191 = v9;
      v176 = self;
      v77 = objc_opt_new();
      v227 = 0u;
      v228 = 0u;
      v229 = 0u;
      v230 = 0u;
      v78 = v74;
      v79 = [v78 countByEnumeratingWithState:&v227 objects:v260 count:16];
      if (v79)
      {
        v80 = v79;
        v81 = *v228;
        do
        {
          for (n = 0; n != v80; ++n)
          {
            v83 = v77;
            if (*v228 != v81)
            {
              objc_enumerationMutation(v78);
            }

            v84 = *(*(&v227 + 1) + 8 * n);
            v85 = [CCContactSocialProfile alloc];
            v226 = 0;
            v86 = [(CCContactSocialProfile *)v85 initWithJSONDictionary:v84 error:&v226];
            v87 = v226;
            if (v86)
            {
              v88 = v87 == 0;
            }

            else
            {
              v88 = 0;
            }

            if (!v88)
            {
              v104 = v87;
              CCSetError();

              v42 = 0;
              v77 = v78;
              self = v176;
              v9 = v191;
              v10 = v196;
              v76 = v168;
              goto LABEL_158;
            }

            v77 = v83;
            [v83 addObject:v86];
          }

          v80 = [v78 countByEnumeratingWithState:&v227 objects:v260 count:16];
        }

        while (v80);
      }

      self = v176;
      a4 = objd;
      v9 = v191;
      v61 = v168;
    }

    else
    {
      v77 = 0;
    }

    v90 = [v6 objectForKeyedSubscript:@"instantMessageAddresses"];
    v166 = v77;
    if (v90)
    {
      v91 = v90;
      objc_opt_class();
      v225 = v61;
      v92 = CCValidateIsInstanceOfExpectedClass();
      v93 = v61;

      if ((v92 & 1) == 0)
      {
        CCSetError();
        v42 = 0;
        v61 = v93;
        v94 = v91;
        v10 = v196;
LABEL_120:
        v77 = v166;
        goto LABEL_157;
      }

      obje = a4;
      v192 = v9;
      v177 = self;
      v169 = objc_opt_new();
      v221 = 0u;
      v222 = 0u;
      v223 = 0u;
      v224 = 0u;
      v61 = v93;
      v94 = v91;
      v95 = [v94 countByEnumeratingWithState:&v221 objects:v259 count:16];
      if (v95)
      {
        v96 = v95;
        v97 = *v222;
        do
        {
          for (ii = 0; ii != v96; ++ii)
          {
            if (*v222 != v97)
            {
              objc_enumerationMutation(v94);
            }

            v99 = *(*(&v221 + 1) + 8 * ii);
            v100 = [CCContactInstantMessageAddress alloc];
            v220 = 0;
            v101 = [(CCContactInstantMessageAddress *)v100 initWithJSONDictionary:v99 error:&v220];
            v102 = v220;
            if (v101)
            {
              v103 = v102 == 0;
            }

            else
            {
              v103 = 0;
            }

            if (!v103)
            {
              v121 = v102;
              CCSetError();

              v42 = 0;
              self = v177;
              v9 = v192;
              v10 = v196;
              goto LABEL_120;
            }

            [v169 addObject:v101];
          }

          v96 = [v94 countByEnumeratingWithState:&v221 objects:v259 count:16];
        }

        while (v96);
      }

      self = v177;
      a4 = obje;
      v9 = v192;
      v77 = v166;
    }

    else
    {
      v169 = 0;
    }

    v105 = [v6 objectForKeyedSubscript:@"relations"];
    v10 = v196;
    if (v105)
    {
      v106 = v105;
      objc_opt_class();
      v219 = v61;
      v107 = CCValidateIsInstanceOfExpectedClass();
      v108 = v61;
      v109 = v61;
      v110 = v108;

      v165 = v110;
      if ((v107 & 1) == 0)
      {
        CCSetError();
        v42 = 0;
        v111 = v106;
LABEL_127:
        v77 = v166;
        v94 = v169;
        goto LABEL_156;
      }

      objf = a4;
      v193 = v9;
      v167 = objc_opt_new();
      v215 = 0u;
      v216 = 0u;
      v217 = 0u;
      v218 = 0u;
      v111 = v106;
      v112 = [v111 countByEnumeratingWithState:&v215 objects:v258 count:16];
      if (v112)
      {
        v113 = v112;
        v114 = *v216;
        do
        {
          for (jj = 0; jj != v113; ++jj)
          {
            if (*v216 != v114)
            {
              objc_enumerationMutation(v111);
            }

            v116 = *(*(&v215 + 1) + 8 * jj);
            v117 = [CCContactRelation alloc];
            v214 = 0;
            v118 = [(CCContactRelation *)v117 initWithJSONDictionary:v116 error:&v214];
            v119 = v214;
            if (v118)
            {
              v120 = v119 == 0;
            }

            else
            {
              v120 = 0;
            }

            if (!v120)
            {
              v127 = v119;
              CCSetError();

              v42 = 0;
              v9 = v193;
              v10 = v196;
              goto LABEL_127;
            }

            [v167 addObject:v118];
          }

          v113 = [v111 countByEnumeratingWithState:&v215 objects:v258 count:16];
        }

        while (v113);
      }

      v9 = v193;
      v10 = v196;
      a4 = objf;
      v77 = v166;
    }

    else
    {
      v167 = 0;
      v165 = v61;
    }

    v163 = [v6 objectForKeyedSubscript:@"organizationName"];
    v162 = [v6 objectForKeyedSubscript:@"departmentName"];
    v161 = [v6 objectForKeyedSubscript:@"jobTitle"];
    v160 = [v6 objectForKeyedSubscript:@"phoneticGivenName"];
    v159 = [v6 objectForKeyedSubscript:@"phoneticMiddleName"];
    v158 = [v6 objectForKeyedSubscript:@"phoneticFamilyName"];
    v157 = [v6 objectForKeyedSubscript:@"phoneticOrganizationName"];
    v156 = [v6 objectForKeyedSubscript:@"note"];
    v122 = [v6 objectForKeyedSubscript:@"birthday"];
    v123 = 0x1E73E5000uLL;
    if (v122)
    {
      v213 = 0;
      v164 = v122;
      v124 = [[CCContactDate alloc] initWithJSONDictionary:v122 error:&v213];
      v125 = v213;
      v126 = v125;
      objg = v124;
      if (!v124 || v125)
      {
        CCSetError();
        v42 = 0;
        v133 = v126;
        goto LABEL_154;
      }

      v164 = v124;
      v123 = 0x1E73E5000;
    }

    else
    {
      v164 = 0;
    }

    v128 = [v6 objectForKeyedSubscript:@"nonGregorianBirthday"];
    if (v128)
    {
      v129 = objc_alloc(*(v123 + 2392));
      v212 = 0;
      v130 = [v129 initWithJSONDictionary:v128 error:&v212];
      v131 = v212;
      if (!v130 || v131)
      {
        v148 = v131;
        CCSetError();

        v152 = v148;
        v42 = 0;
        v133 = v128;
        v94 = v169;
LABEL_155:

        v111 = v167;
LABEL_156:

        v61 = v165;
LABEL_157:

        v76 = v61;
        goto LABEL_158;
      }

      v128 = v130;
      v132 = v165;
      v123 = 0x1E73E5000;
    }

    else
    {
      v132 = v165;
    }

    v134 = [v6 objectForKeyedSubscript:@"dates"];
    if (!v134)
    {
      v165 = v132;
      v138 = 0;
LABEL_152:
      v199 = v138;
      v154 = v138;
      v153 = v128;
      v77 = v166;
      v133 = v128;
      v94 = v169;
      v42 = [[CCContactContent alloc] initWithGivenName:v9 middleName:v10 familyName:v205 previousFamilyName:v204 nickname:v203 namePrefix:v202 nameSuffix:v201 phoneNumbers:v15 emailAddresses:v30 postalAddresses:v200 urlAddresses:v171 socialProfiles:v166 instantMessageAddresses:v169 relations:v167 organizationName:v163 departmentName:v162 jobTitle:v161 phoneticGivenName:v160 phoneticMiddleName:v159 phoneticFamilyName:v158 phoneticOrganizationName:v157 note:v156 birthday:v164 nonGregorianBirthday:v153 dates:v154 error:a4];
      v152 = v199;
      goto LABEL_155;
    }

    v155 = v128;
    v135 = v134;
    objc_opt_class();
    v211 = v132;
    objg = v135;
    v197 = CCValidateIsInstanceOfExpectedClass();
    v136 = v132;

    if (v197)
    {
      v165 = v136;
      v137 = v123;
      v170 = v30;
      v194 = v9;
      v198 = v10;
      v178 = self;
      v138 = objc_opt_new();
      v207 = 0u;
      v208 = 0u;
      v209 = 0u;
      v210 = 0u;
      objh = objg;
      v139 = [(CCContactDate *)objh countByEnumeratingWithState:&v207 objects:v257 count:16];
      if (v139)
      {
        v140 = v139;
        v141 = *v208;
        do
        {
          for (kk = 0; kk != v140; ++kk)
          {
            if (*v208 != v141)
            {
              objc_enumerationMutation(objh);
            }

            v143 = *(*(&v207 + 1) + 8 * kk);
            v144 = objc_alloc(*(v137 + 2392));
            v206 = 0;
            v145 = [v144 initWithJSONDictionary:v143 error:&v206];
            v146 = v206;
            if (v145)
            {
              v147 = v146 == 0;
            }

            else
            {
              v147 = 0;
            }

            if (!v147)
            {
              v151 = v146;
              CCSetError();

              v42 = 0;
              self = v178;
              v9 = v194;
              v10 = v198;
              v77 = v166;
              v152 = objh;
              v133 = v155;
              v94 = v169;
              v30 = v170;
              goto LABEL_155;
            }

            [(CCContactDate *)v138 addObject:v145];
          }

          v140 = [(CCContactDate *)objh countByEnumeratingWithState:&v207 objects:v257 count:16];
        }

        while (v140);
      }

      self = v178;
      v9 = v194;
      v10 = v198;
      v30 = v170;
      v128 = v155;
      goto LABEL_152;
    }

    CCSetError();
    v42 = 0;
    v165 = v136;
    v77 = v166;
    v133 = v155;
LABEL_154:
    v94 = v169;
    v152 = objg;
    goto LABEL_155;
  }

  CCSetError();
  v42 = 0;
LABEL_163:

  v149 = *MEMORY[0x1E69E9840];
  return v42;
}

- (id)jsonDictionary
{
  v122 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_givenName)
  {
    v4 = [(CCContactContent *)self givenName];
    [v3 setObject:v4 forKeyedSubscript:@"givenName"];
  }

  if (self->_middleName)
  {
    v5 = [(CCContactContent *)self middleName];
    [v3 setObject:v5 forKeyedSubscript:@"middleName"];
  }

  if (self->_familyName)
  {
    v6 = [(CCContactContent *)self familyName];
    [v3 setObject:v6 forKeyedSubscript:@"familyName"];
  }

  if (self->_previousFamilyName)
  {
    v7 = [(CCContactContent *)self previousFamilyName];
    [v3 setObject:v7 forKeyedSubscript:@"previousFamilyName"];
  }

  if (self->_nickname)
  {
    v8 = [(CCContactContent *)self nickname];
    [v3 setObject:v8 forKeyedSubscript:@"nickname"];
  }

  if (self->_namePrefix)
  {
    v9 = [(CCContactContent *)self namePrefix];
    [v3 setObject:v9 forKeyedSubscript:@"namePrefix"];
  }

  if (self->_nameSuffix)
  {
    v10 = [(CCContactContent *)self nameSuffix];
    [v3 setObject:v10 forKeyedSubscript:@"nameSuffix"];
  }

  if (self->_phoneNumbers)
  {
    v11 = objc_opt_new();
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v12 = [(CCContactContent *)self phoneNumbers];
    v13 = [v12 countByEnumeratingWithState:&v110 objects:v121 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v111;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v111 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v110 + 1) + 8 * i) jsonDictionary];
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v110 objects:v121 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKeyedSubscript:@"phoneNumbers"];
  }

  if (self->_emailAddresses)
  {
    v18 = objc_opt_new();
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v19 = [(CCContactContent *)self emailAddresses];
    v20 = [v19 countByEnumeratingWithState:&v106 objects:v120 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v107;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v107 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v106 + 1) + 8 * j) jsonDictionary];
          [v18 addObject:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v106 objects:v120 count:16];
      }

      while (v21);
    }

    [v3 setObject:v18 forKeyedSubscript:@"emailAddresses"];
  }

  if (self->_postalAddresses)
  {
    v25 = objc_opt_new();
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v26 = [(CCContactContent *)self postalAddresses];
    v27 = [v26 countByEnumeratingWithState:&v102 objects:v119 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v103;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v103 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [*(*(&v102 + 1) + 8 * k) jsonDictionary];
          [v25 addObject:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v102 objects:v119 count:16];
      }

      while (v28);
    }

    [v3 setObject:v25 forKeyedSubscript:@"postalAddresses"];
  }

  if (self->_urlAddresses)
  {
    v32 = objc_opt_new();
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v33 = [(CCContactContent *)self urlAddresses];
    v34 = [v33 countByEnumeratingWithState:&v98 objects:v118 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v99;
      do
      {
        for (m = 0; m != v35; ++m)
        {
          if (*v99 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(*(&v98 + 1) + 8 * m) jsonDictionary];
          [v32 addObject:v38];
        }

        v35 = [v33 countByEnumeratingWithState:&v98 objects:v118 count:16];
      }

      while (v35);
    }

    [v3 setObject:v32 forKeyedSubscript:@"urlAddresses"];
  }

  if (self->_socialProfiles)
  {
    v39 = objc_opt_new();
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v40 = [(CCContactContent *)self socialProfiles];
    v41 = [v40 countByEnumeratingWithState:&v94 objects:v117 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v95;
      do
      {
        for (n = 0; n != v42; ++n)
        {
          if (*v95 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = [*(*(&v94 + 1) + 8 * n) jsonDictionary];
          [v39 addObject:v45];
        }

        v42 = [v40 countByEnumeratingWithState:&v94 objects:v117 count:16];
      }

      while (v42);
    }

    [v3 setObject:v39 forKeyedSubscript:@"socialProfiles"];
  }

  if (self->_instantMessageAddresses)
  {
    v46 = objc_opt_new();
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v47 = [(CCContactContent *)self instantMessageAddresses];
    v48 = [v47 countByEnumeratingWithState:&v90 objects:v116 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v91;
      do
      {
        for (ii = 0; ii != v49; ++ii)
        {
          if (*v91 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = [*(*(&v90 + 1) + 8 * ii) jsonDictionary];
          [v46 addObject:v52];
        }

        v49 = [v47 countByEnumeratingWithState:&v90 objects:v116 count:16];
      }

      while (v49);
    }

    [v3 setObject:v46 forKeyedSubscript:@"instantMessageAddresses"];
  }

  if (self->_relations)
  {
    v53 = objc_opt_new();
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v54 = [(CCContactContent *)self relations];
    v55 = [v54 countByEnumeratingWithState:&v86 objects:v115 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v87;
      do
      {
        for (jj = 0; jj != v56; ++jj)
        {
          if (*v87 != v57)
          {
            objc_enumerationMutation(v54);
          }

          v59 = [*(*(&v86 + 1) + 8 * jj) jsonDictionary];
          [v53 addObject:v59];
        }

        v56 = [v54 countByEnumeratingWithState:&v86 objects:v115 count:16];
      }

      while (v56);
    }

    [v3 setObject:v53 forKeyedSubscript:@"relations"];
  }

  if (self->_organizationName)
  {
    v60 = [(CCContactContent *)self organizationName];
    [v3 setObject:v60 forKeyedSubscript:@"organizationName"];
  }

  if (self->_departmentName)
  {
    v61 = [(CCContactContent *)self departmentName];
    [v3 setObject:v61 forKeyedSubscript:@"departmentName"];
  }

  if (self->_jobTitle)
  {
    v62 = [(CCContactContent *)self jobTitle];
    [v3 setObject:v62 forKeyedSubscript:@"jobTitle"];
  }

  if (self->_phoneticGivenName)
  {
    v63 = [(CCContactContent *)self phoneticGivenName];
    [v3 setObject:v63 forKeyedSubscript:@"phoneticGivenName"];
  }

  if (self->_phoneticMiddleName)
  {
    v64 = [(CCContactContent *)self phoneticMiddleName];
    [v3 setObject:v64 forKeyedSubscript:@"phoneticMiddleName"];
  }

  if (self->_phoneticFamilyName)
  {
    v65 = [(CCContactContent *)self phoneticFamilyName];
    [v3 setObject:v65 forKeyedSubscript:@"phoneticFamilyName"];
  }

  if (self->_phoneticOrganizationName)
  {
    v66 = [(CCContactContent *)self phoneticOrganizationName];
    [v3 setObject:v66 forKeyedSubscript:@"phoneticOrganizationName"];
  }

  if (self->_note)
  {
    v67 = [(CCContactContent *)self note];
    [v3 setObject:v67 forKeyedSubscript:@"note"];
  }

  if (self->_birthday)
  {
    v68 = [(CCContactContent *)self birthday];
    v69 = [v68 jsonDictionary];
    [v3 setObject:v69 forKeyedSubscript:@"birthday"];
  }

  if (self->_nonGregorianBirthday)
  {
    v70 = [(CCContactContent *)self nonGregorianBirthday];
    v71 = [v70 jsonDictionary];
    [v3 setObject:v71 forKeyedSubscript:@"nonGregorianBirthday"];
  }

  if (self->_dates)
  {
    v72 = objc_opt_new();
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v73 = [(CCContactContent *)self dates];
    v74 = [v73 countByEnumeratingWithState:&v82 objects:v114 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v83;
      do
      {
        for (kk = 0; kk != v75; ++kk)
        {
          if (*v83 != v76)
          {
            objc_enumerationMutation(v73);
          }

          v78 = [*(*(&v82 + 1) + 8 * kk) jsonDictionary];
          [v72 addObject:v78];
        }

        v75 = [v73 countByEnumeratingWithState:&v82 objects:v114 count:16];
      }

      while (v75);
    }

    [v3 setObject:v72 forKeyedSubscript:@"dates"];
  }

  v79 = [v3 copy];

  v80 = *MEMORY[0x1E69E9840];

  return v79;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v31 = a3;
  if (self->_givenName)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19679 stringValue:self->_givenName];
    v31[2](v31, v5);
  }

  if (self->_middleName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19680 stringValue:self->_middleName];
    v31[2](v31, v6);
  }

  if (self->_familyName)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19681 stringValue:self->_familyName];
    v31[2](v31, v7);
  }

  if (self->_previousFamilyName)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19682 stringValue:self->_previousFamilyName];
    v31[2](v31, v8);
  }

  if (self->_nickname)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19683 stringValue:self->_nickname];
    v31[2](v31, v9);
  }

  if (self->_namePrefix)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19684 stringValue:self->_namePrefix];
    v31[2](v31, v10);
  }

  if (self->_nameSuffix)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19685 stringValue:self->_nameSuffix];
    v31[2](v31, v11);
  }

  if (self->_phoneNumbers)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19686 repeatedSubMessageValue:self->_phoneNumbers];
    v31[2](v31, v12);
  }

  if (self->_emailAddresses)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19687 repeatedSubMessageValue:self->_emailAddresses];
    v31[2](v31, v13);
  }

  if (self->_postalAddresses)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19688 repeatedSubMessageValue:self->_postalAddresses];
    v31[2](v31, v14);
  }

  if (self->_urlAddresses)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19689 repeatedSubMessageValue:self->_urlAddresses];
    v31[2](v31, v15);
  }

  if (self->_socialProfiles)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19690 repeatedSubMessageValue:self->_socialProfiles];
    v31[2](v31, v16);
  }

  if (self->_instantMessageAddresses)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19691 repeatedSubMessageValue:self->_instantMessageAddresses];
    v31[2](v31, v17);
  }

  if (self->_relations)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19692 repeatedSubMessageValue:self->_relations];
    v31[2](v31, v18);
  }

  if (self->_organizationName)
  {
    v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19693 stringValue:self->_organizationName];
    v31[2](v31, v19);
  }

  if (self->_departmentName)
  {
    v20 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19694 stringValue:self->_departmentName];
    v31[2](v31, v20);
  }

  if (self->_jobTitle)
  {
    v21 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19695 stringValue:self->_jobTitle];
    v31[2](v31, v21);
  }

  if (self->_phoneticGivenName)
  {
    v22 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19696 stringValue:self->_phoneticGivenName];
    v31[2](v31, v22);
  }

  if (self->_phoneticMiddleName)
  {
    v23 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19697 stringValue:self->_phoneticMiddleName];
    v31[2](v31, v23);
  }

  if (self->_phoneticFamilyName)
  {
    v24 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19698 stringValue:self->_phoneticFamilyName];
    v31[2](v31, v24);
  }

  if (self->_phoneticOrganizationName)
  {
    v25 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19699 stringValue:self->_phoneticOrganizationName];
    v31[2](v31, v25);
  }

  if (self->_note)
  {
    v26 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19700 stringValue:self->_note];
    v31[2](v31, v26);
  }

  if (self->_birthday)
  {
    v27 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19701 subMessageValue:self->_birthday];
    v31[2](v31, v27);
  }

  if (self->_nonGregorianBirthday)
  {
    v28 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19702 subMessageValue:self->_nonGregorianBirthday];
    v31[2](v31, v28);
  }

  v29 = v31;
  if (self->_dates)
  {
    v30 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:19705 repeatedSubMessageValue:self->_dates];
    v31[2](v31, v30);

    v29 = v31;
  }
}

- (NSArray)dates
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_dates copyItems:1];

  return v2;
}

- (CCContactDate)nonGregorianBirthday
{
  v2 = [(CCContactDate *)self->_nonGregorianBirthday copy];

  return v2;
}

- (CCContactDate)birthday
{
  v2 = [(CCContactDate *)self->_birthday copy];

  return v2;
}

- (NSString)note
{
  v2 = [(NSString *)self->_note copy];

  return v2;
}

- (NSString)phoneticOrganizationName
{
  v2 = [(NSString *)self->_phoneticOrganizationName copy];

  return v2;
}

- (NSString)phoneticFamilyName
{
  v2 = [(NSString *)self->_phoneticFamilyName copy];

  return v2;
}

- (NSString)phoneticMiddleName
{
  v2 = [(NSString *)self->_phoneticMiddleName copy];

  return v2;
}

- (NSString)phoneticGivenName
{
  v2 = [(NSString *)self->_phoneticGivenName copy];

  return v2;
}

- (NSString)jobTitle
{
  v2 = [(NSString *)self->_jobTitle copy];

  return v2;
}

- (NSString)departmentName
{
  v2 = [(NSString *)self->_departmentName copy];

  return v2;
}

- (NSString)organizationName
{
  v2 = [(NSString *)self->_organizationName copy];

  return v2;
}

- (NSArray)relations
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_relations copyItems:1];

  return v2;
}

- (NSArray)instantMessageAddresses
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_instantMessageAddresses copyItems:1];

  return v2;
}

- (NSArray)socialProfiles
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_socialProfiles copyItems:1];

  return v2;
}

- (NSArray)urlAddresses
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_urlAddresses copyItems:1];

  return v2;
}

- (NSArray)postalAddresses
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_postalAddresses copyItems:1];

  return v2;
}

- (NSArray)emailAddresses
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_emailAddresses copyItems:1];

  return v2;
}

- (NSArray)phoneNumbers
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_phoneNumbers copyItems:1];

  return v2;
}

- (NSString)nameSuffix
{
  v2 = [(NSString *)self->_nameSuffix copy];

  return v2;
}

- (NSString)namePrefix
{
  v2 = [(NSString *)self->_namePrefix copy];

  return v2;
}

- (NSString)nickname
{
  v2 = [(NSString *)self->_nickname copy];

  return v2;
}

- (NSString)previousFamilyName
{
  v2 = [(NSString *)self->_previousFamilyName copy];

  return v2;
}

- (NSString)familyName
{
  v2 = [(NSString *)self->_familyName copy];

  return v2;
}

- (NSString)middleName
{
  v2 = [(NSString *)self->_middleName copy];

  return v2;
}

- (NSString)givenName
{
  v2 = [(NSString *)self->_givenName copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v66 = a4;
  v67 = a3;
  v5 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v67];
  v6 = MEMORY[0x1E6993AB8];
  v7 = MEMORY[0x1E6993AB0];
  if (*&v5[*MEMORY[0x1E6993AB8]] >= *&v5[*MEMORY[0x1E6993AB0]])
  {
    v9 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    goto LABEL_90;
  }

  v8 = 0;
  v70 = 0;
  v71 = 0;
  v68 = 0;
  v69 = 0;
  v73 = 0;
  v74 = 0;
  v72 = 0;
  v9 = 0;
  v10 = MEMORY[0x1E6993AA8];
  v11 = MEMORY[0x1E6993AA0];
LABEL_3:
  if (*&v5[*v10])
  {
    v12 = 0;
  }

  else
  {
    v12 = v8 == 0;
  }

  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *v6;
      v17 = *&v5[v16];
      if (v17 == -1 || v17 >= *&v5[*v7])
      {
        break;
      }

      v18 = *(*&v5[*v11] + v17);
      *&v5[v16] = v17 + 1;
      v15 |= (v18 & 0x7F) << v13;
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      v13 += 7;
      if (v14++ >= 9)
      {
        v20 = 0;
        if (*&v5[*v10])
        {
          goto LABEL_90;
        }

LABEL_21:
        switch((v20 >> 3))
        {
          case 1u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 16;
            goto LABEL_80;
          case 2u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 24;
            goto LABEL_80;
          case 3u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 32;
            goto LABEL_80;
          case 4u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 40;
            goto LABEL_80;
          case 5u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 48;
            goto LABEL_80;
          case 6u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 56;
            goto LABEL_80;
          case 7u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 64;
            goto LABEL_80;
          case 8u:
            v24 = CCPBReaderReadDataNoCopy();
            if (!v71)
            {
              v71 = objc_opt_new();
            }

            v31 = [CCContactPhoneNumber alloc];
            v84[0] = 0;
            v26 = [(CCItemMessage *)v31 initWithData:v24 error:v84];
            v8 = v84[0];
            if (v8 || !v26)
            {
              goto LABEL_77;
            }

            v27 = v71;
            goto LABEL_76;
          case 9u:
            v24 = CCPBReaderReadDataNoCopy();
            if (!v70)
            {
              v70 = objc_opt_new();
            }

            v34 = [CCContactEmailAddress alloc];
            v83 = 0;
            v26 = [(CCItemMessage *)v34 initWithData:v24 error:&v83];
            v8 = v83;
            if (v8 || !v26)
            {
              goto LABEL_77;
            }

            v27 = v70;
            goto LABEL_76;
          case 0xAu:
            v24 = CCPBReaderReadDataNoCopy();
            if (!v69)
            {
              v69 = objc_opt_new();
            }

            v29 = [CCContactPostalAddress alloc];
            v82 = 0;
            v26 = [(CCItemMessage *)v29 initWithData:v24 error:&v82];
            v8 = v82;
            if (v8 || !v26)
            {
              goto LABEL_77;
            }

            v27 = v69;
            goto LABEL_76;
          case 0xBu:
            v24 = CCPBReaderReadDataNoCopy();
            if (!v68)
            {
              v68 = objc_opt_new();
            }

            v33 = [CCContactURLAddress alloc];
            v81 = 0;
            v26 = [(CCItemMessage *)v33 initWithData:v24 error:&v81];
            v8 = v81;
            if (v8 || !v26)
            {
              goto LABEL_77;
            }

            v27 = v68;
            goto LABEL_76;
          case 0xCu:
            v24 = CCPBReaderReadDataNoCopy();
            if (!v74)
            {
              v74 = objc_opt_new();
            }

            v25 = [CCContactSocialProfile alloc];
            v80 = 0;
            v26 = [(CCItemMessage *)v25 initWithData:v24 error:&v80];
            v8 = v80;
            if (v8 || !v26)
            {
              goto LABEL_77;
            }

            v27 = v74;
            goto LABEL_76;
          case 0xDu:
            v24 = CCPBReaderReadDataNoCopy();
            if (!v73)
            {
              v73 = objc_opt_new();
            }

            v28 = [CCContactInstantMessageAddress alloc];
            v79 = 0;
            v26 = [(CCItemMessage *)v28 initWithData:v24 error:&v79];
            v8 = v79;
            if (v8 || !v26)
            {
              goto LABEL_77;
            }

            v27 = v73;
            goto LABEL_76;
          case 0xEu:
            v24 = CCPBReaderReadDataNoCopy();
            if (!v72)
            {
              v72 = objc_opt_new();
            }

            v32 = [CCContactRelation alloc];
            v78 = 0;
            v26 = [(CCItemMessage *)v32 initWithData:v24 error:&v78];
            v8 = v78;
            if (v8 || !v26)
            {
              goto LABEL_77;
            }

            v27 = v72;
            goto LABEL_76;
          case 0xFu:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 128;
            goto LABEL_80;
          case 0x10u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 136;
            goto LABEL_80;
          case 0x11u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 144;
            goto LABEL_80;
          case 0x12u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 152;
            goto LABEL_80;
          case 0x13u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 160;
            goto LABEL_80;
          case 0x14u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 168;
            goto LABEL_80;
          case 0x15u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 176;
            goto LABEL_80;
          case 0x16u:
            v22 = CCPBReaderReadStringNoCopy();
            v8 = 0;
            v23 = 184;
LABEL_80:
            v24 = *(&self->super.super.isa + v23);
            *(&self->super.super.isa + v23) = v22;
            goto LABEL_81;
          case 0x17u:
            v35 = [CCContactDate alloc];
            v24 = CCPBReaderReadDataNoCopy();
            v77 = 0;
            v36 = [(CCItemMessage *)v35 initWithData:v24 error:&v77];
            v8 = v77;
            v37 = 192;
            goto LABEL_85;
          case 0x18u:
            v38 = [CCContactDate alloc];
            v24 = CCPBReaderReadDataNoCopy();
            v76 = 0;
            v36 = [(CCItemMessage *)v38 initWithData:v24 error:&v76];
            v8 = v76;
            v37 = 200;
LABEL_85:
            v39 = *(&self->super.super.isa + v37);
            *(&self->super.super.isa + v37) = v36;

            goto LABEL_81;
          case 0x19u:
            v24 = CCPBReaderReadDataNoCopy();
            if (!v9)
            {
              v9 = objc_opt_new();
            }

            v30 = [CCContactDate alloc];
            v75 = 0;
            v26 = [(CCItemMessage *)v30 initWithData:v24 error:&v75];
            v8 = v75;
            if (!v8 && v26)
            {
              v27 = v9;
LABEL_76:
              [v27 addObject:{v26, v66}];
            }

LABEL_77:

            goto LABEL_81;
          default:
            if (CCPBReaderSkipValueWithTag())
            {
              v8 = 0;
            }

            else
            {
              v40 = objc_opt_class();
              v24 = NSStringFromClass(v40);
              v41 = *&v5[*v10];
              v8 = CCSkipFieldErrorForMessage();
LABEL_81:
            }

            if (*&v5[*v6] >= *&v5[*v7])
            {
              goto LABEL_91;
            }

            goto LABEL_3;
        }
      }
    }

    *&v5[*v10] = 1;
LABEL_17:
    v21 = *&v5[*v10];
    if (v21)
    {
      v20 = 0;
    }

    else
    {
      v20 = v15;
    }

    if (!v21)
    {
      goto LABEL_21;
    }

LABEL_90:
    v8 = 0;
  }

LABEL_91:
  v42 = [v71 copy];
  phoneNumbers = self->_phoneNumbers;
  self->_phoneNumbers = v42;

  v44 = [v70 copy];
  emailAddresses = self->_emailAddresses;
  self->_emailAddresses = v44;

  v46 = [v69 copy];
  postalAddresses = self->_postalAddresses;
  self->_postalAddresses = v46;

  v48 = [v68 copy];
  urlAddresses = self->_urlAddresses;
  self->_urlAddresses = v48;

  v50 = [v74 copy];
  socialProfiles = self->_socialProfiles;
  self->_socialProfiles = v50;

  v52 = [v73 copy];
  instantMessageAddresses = self->_instantMessageAddresses;
  self->_instantMessageAddresses = v52;

  v54 = [v72 copy];
  relations = self->_relations;
  self->_relations = v54;

  v56 = [v9 copy];
  dates = self->_dates;
  self->_dates = v56;

  if (v8)
  {
    CCSetError();
    v58 = 0;
    v59 = v67;
  }

  else
  {
    v60 = MEMORY[0x1E6993AA8];
    v59 = v67;
    if (*&v5[*MEMORY[0x1E6993AA8]])
    {
      v61 = objc_opt_class();
      v62 = NSStringFromClass(v61);
      v63 = *&v5[*v60];
      v64 = CCInvalidBufferErrorForMessage();
      CCSetError();

      v58 = 0;
    }

    else
    {
      v58 = 1;
    }
  }

  return v58;
}

- (CCContactContent)initWithGivenName:(id)a3 middleName:(id)a4 familyName:(id)a5 previousFamilyName:(id)a6 nickname:(id)a7 namePrefix:(id)a8 nameSuffix:(id)a9 phoneNumbers:(id)a10 emailAddresses:(id)a11 postalAddresses:(id)a12 urlAddresses:(id)a13 socialProfiles:(id)a14 instantMessageAddresses:(id)a15 relations:(id)a16 organizationName:(id)a17 departmentName:(id)a18 jobTitle:(id)a19 phoneticGivenName:(id)a20 phoneticMiddleName:(id)a21 phoneticFamilyName:(id)a22 phoneticOrganizationName:(id)a23 note:(id)a24 birthday:(id)a25 nonGregorianBirthday:(id)a26 dates:(id)a27 error:(id *)a28
{
  v220 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v151 = a8;
  v154 = a9;
  v153 = a10;
  v152 = a11;
  v150 = a12;
  v149 = a13;
  v148 = a14;
  v147 = a15;
  v146 = a16;
  v145 = a17;
  v38 = a18;
  v143 = a19;
  v142 = a20;
  v141 = a21;
  v140 = a22;
  v139 = a23;
  v138 = a24;
  v137 = a25;
  v135 = a26;
  v136 = a27;
  v39 = objc_opt_new();
  v40 = 0x1E696A000uLL;
  v133 = v35;
  v144 = v38;
  if (v33)
  {
    objc_opt_class();
    v211 = 0;
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v42 = 0;
    if (!IsInstanceOfExpectedClass)
    {
      goto LABEL_137;
    }

    CCPBDataWriterWriteStringField();
  }

  else
  {
    v42 = 0;
  }

  v43 = v151;
  if (v34)
  {
    objc_opt_class();
    v210 = v42;
    v44 = CCValidateIsInstanceOfExpectedClass();
    v45 = v42;

    if (!v44)
    {
      goto LABEL_14;
    }

    CCPBDataWriterWriteStringField();
    v40 = 0x1E696A000uLL;
    if (!v35)
    {
LABEL_8:
      v42 = v45;
      if (v36)
      {
        goto LABEL_9;
      }

LABEL_18:
      v45 = v42;
      if (!v37)
      {
LABEL_11:
        v42 = v45;
        if (v151)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v45 = v42;
    if (!v35)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  v209 = v45;
  v51 = CCValidateIsInstanceOfExpectedClass();
  v42 = v45;

  if (!v51)
  {
    goto LABEL_25;
  }

  CCPBDataWriterWriteStringField();
  v40 = 0x1E696A000uLL;
  if (!v36)
  {
    goto LABEL_18;
  }

LABEL_9:
  objc_opt_class();
  v208 = v42;
  v46 = CCValidateIsInstanceOfExpectedClass();
  v45 = v42;

  if (v46)
  {
    CCPBDataWriterWriteStringField();
    v40 = 0x1E696A000uLL;
    if (!v37)
    {
      goto LABEL_11;
    }

LABEL_19:
    objc_opt_class();
    v207 = v45;
    v52 = CCValidateIsInstanceOfExpectedClass();
    v42 = v45;

    if (v52)
    {
      CCPBDataWriterWriteStringField();
      v40 = 0x1E696A000uLL;
      if (v151)
      {
LABEL_12:
        objc_opt_class();
        v206 = v42;
        v47 = CCValidateIsInstanceOfExpectedClass();
        v45 = v42;

        if (v47)
        {
          CCPBDataWriterWriteStringField();
          v40 = 0x1E696A000;
          goto LABEL_22;
        }

        goto LABEL_14;
      }

LABEL_21:
      v45 = v42;
LABEL_22:
      if (v154)
      {
        v53 = *(v40 + 3776);
        objc_opt_class();
        v205 = v45;
        v54 = CCValidateIsInstanceOfExpectedClass();
        v42 = v45;

        if (!v54)
        {
          v48 = v36;
          v49 = v37;
          CCSetError();
          v50 = 0;
LABEL_51:
          v55 = self;
          goto LABEL_141;
        }

        CCPBDataWriterWriteStringField();
      }

      else
      {
        v42 = v45;
      }

      v132 = v33;
      if (!v153)
      {
        v57 = v42;
        goto LABEL_40;
      }

      v48 = v36;
      v49 = v37;
      objc_opt_class();
      v204 = v42;
      v56 = CCValidateArrayValues();
      v57 = v42;

      if (v56)
      {
        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        v58 = v153;
        v59 = [v58 countByEnumeratingWithState:&v200 objects:v219 count:16];
        if (v59)
        {
          v60 = v59;
          v61 = *v201;
          do
          {
            for (i = 0; i != v60; ++i)
            {
              if (*v201 != v61)
              {
                objc_enumerationMutation(v58);
              }

              v63 = [*(*(&v200 + 1) + 8 * i) data];
              CCPBDataWriterWriteDataField();
            }

            v60 = [v58 countByEnumeratingWithState:&v200 objects:v219 count:16];
          }

          while (v60);
        }

        v33 = v132;
        v37 = v49;
        v36 = v48;
LABEL_40:
        if (v152)
        {
          v48 = v36;
          v49 = v37;
          objc_opt_class();
          v199 = v57;
          v64 = CCValidateArrayValues();
          v42 = v57;

          if (!v64)
          {
            goto LABEL_138;
          }

          v197 = 0u;
          v198 = 0u;
          v195 = 0u;
          v196 = 0u;
          v65 = v152;
          v66 = [v65 countByEnumeratingWithState:&v195 objects:v218 count:16];
          if (v66)
          {
            v67 = v66;
            v68 = *v196;
            do
            {
              for (j = 0; j != v67; ++j)
              {
                if (*v196 != v68)
                {
                  objc_enumerationMutation(v65);
                }

                v70 = [*(*(&v195 + 1) + 8 * j) data];
                CCPBDataWriterWriteDataField();
              }

              v67 = [v65 countByEnumeratingWithState:&v195 objects:v218 count:16];
            }

            while (v67);
          }

          v33 = v132;
          v37 = v49;
          v36 = v48;
        }

        else
        {
          v42 = v57;
        }

        if (v150)
        {
          v48 = v36;
          v49 = v37;
          objc_opt_class();
          v194 = v42;
          v71 = CCValidateArrayValues();
          v72 = v42;

          if (!v71)
          {
            goto LABEL_132;
          }

          v192 = 0u;
          v193 = 0u;
          v190 = 0u;
          v191 = 0u;
          v73 = v150;
          v74 = [v73 countByEnumeratingWithState:&v190 objects:v217 count:16];
          if (v74)
          {
            v75 = v74;
            v76 = *v191;
            do
            {
              for (k = 0; k != v75; ++k)
              {
                if (*v191 != v76)
                {
                  objc_enumerationMutation(v73);
                }

                v78 = [*(*(&v190 + 1) + 8 * k) data];
                CCPBDataWriterWriteDataField();
              }

              v75 = [v73 countByEnumeratingWithState:&v190 objects:v217 count:16];
            }

            while (v75);
          }

          v33 = v132;
          v37 = v49;
          v36 = v48;
        }

        else
        {
          v72 = v42;
        }

        if (v149)
        {
          v48 = v36;
          v49 = v37;
          objc_opt_class();
          v189 = v72;
          v79 = CCValidateArrayValues();
          v42 = v72;

          if (!v79)
          {
            goto LABEL_138;
          }

          v187 = 0u;
          v188 = 0u;
          v185 = 0u;
          v186 = 0u;
          v80 = v149;
          v81 = [v80 countByEnumeratingWithState:&v185 objects:v216 count:16];
          if (v81)
          {
            v82 = v81;
            v83 = *v186;
            do
            {
              for (m = 0; m != v82; ++m)
              {
                if (*v186 != v83)
                {
                  objc_enumerationMutation(v80);
                }

                v85 = [*(*(&v185 + 1) + 8 * m) data];
                CCPBDataWriterWriteDataField();
              }

              v82 = [v80 countByEnumeratingWithState:&v185 objects:v216 count:16];
            }

            while (v82);
          }

          v33 = v132;
          v37 = v49;
          v36 = v48;
        }

        else
        {
          v42 = v72;
        }

        if (v148)
        {
          v48 = v36;
          v49 = v37;
          objc_opt_class();
          v184 = v42;
          v86 = CCValidateArrayValues();
          v72 = v42;

          if (!v86)
          {
            goto LABEL_132;
          }

          v182 = 0u;
          v183 = 0u;
          v180 = 0u;
          v181 = 0u;
          v87 = v148;
          v88 = [v87 countByEnumeratingWithState:&v180 objects:v215 count:16];
          if (v88)
          {
            v89 = v88;
            v90 = *v181;
            do
            {
              for (n = 0; n != v89; ++n)
              {
                if (*v181 != v90)
                {
                  objc_enumerationMutation(v87);
                }

                v92 = [*(*(&v180 + 1) + 8 * n) data];
                CCPBDataWriterWriteDataField();
              }

              v89 = [v87 countByEnumeratingWithState:&v180 objects:v215 count:16];
            }

            while (v89);
          }

          v33 = v132;
          v37 = v49;
          v36 = v48;
        }

        else
        {
          v72 = v42;
        }

        if (v147)
        {
          v48 = v36;
          v49 = v37;
          objc_opt_class();
          v179 = v72;
          v93 = CCValidateArrayValues();
          v42 = v72;

          if (!v93)
          {
            goto LABEL_138;
          }

          v177 = 0u;
          v178 = 0u;
          v175 = 0u;
          v176 = 0u;
          v94 = v147;
          v95 = [v94 countByEnumeratingWithState:&v175 objects:v214 count:16];
          if (v95)
          {
            v96 = v95;
            v97 = *v176;
            do
            {
              for (ii = 0; ii != v96; ++ii)
              {
                if (*v176 != v97)
                {
                  objc_enumerationMutation(v94);
                }

                v99 = [*(*(&v175 + 1) + 8 * ii) data];
                CCPBDataWriterWriteDataField();
              }

              v96 = [v94 countByEnumeratingWithState:&v175 objects:v214 count:16];
            }

            while (v96);
          }

          v33 = v132;
          v37 = v49;
          v36 = v48;
        }

        else
        {
          v42 = v72;
        }

        if (v146)
        {
          v48 = v36;
          v49 = v37;
          objc_opt_class();
          v174 = v42;
          v100 = CCValidateArrayValues();
          v72 = v42;

          if (!v100)
          {
            goto LABEL_132;
          }

          v172 = 0u;
          v173 = 0u;
          v170 = 0u;
          v171 = 0u;
          v101 = v146;
          v102 = [v101 countByEnumeratingWithState:&v170 objects:v213 count:16];
          if (v102)
          {
            v103 = v102;
            v104 = *v171;
            do
            {
              for (jj = 0; jj != v103; ++jj)
              {
                if (*v171 != v104)
                {
                  objc_enumerationMutation(v101);
                }

                v106 = [*(*(&v170 + 1) + 8 * jj) data];
                CCPBDataWriterWriteDataField();
              }

              v103 = [v101 countByEnumeratingWithState:&v170 objects:v213 count:16];
            }

            while (v103);
          }

          v33 = v132;
          v37 = v49;
          v36 = v48;
        }

        else
        {
          v72 = v42;
        }

        v107 = 0x1E696A000uLL;
        if (v145)
        {
          objc_opt_class();
          v169 = v72;
          v108 = CCValidateIsInstanceOfExpectedClass();
          v42 = v72;

          if (!v108)
          {
            goto LABEL_137;
          }

          CCPBDataWriterWriteStringField();
          v107 = 0x1E696A000;
        }

        else
        {
          v42 = v72;
        }

        if (v144)
        {
          v109 = *(v107 + 3776);
          objc_opt_class();
          v168 = v42;
          v110 = CCValidateIsInstanceOfExpectedClass();
          v72 = v42;

          if (!v110)
          {
            goto LABEL_131;
          }

          CCPBDataWriterWriteStringField();
          v107 = 0x1E696A000;
        }

        else
        {
          v72 = v42;
        }

        if (v143)
        {
          v111 = *(v107 + 3776);
          objc_opt_class();
          v167 = v72;
          v112 = CCValidateIsInstanceOfExpectedClass();
          v42 = v72;

          if (!v112)
          {
            goto LABEL_137;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v42 = v72;
        }

        if (v142)
        {
          objc_opt_class();
          v166 = v42;
          v113 = CCValidateIsInstanceOfExpectedClass();
          v72 = v42;

          if (!v113)
          {
            goto LABEL_131;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v72 = v42;
        }

        if (v141)
        {
          objc_opt_class();
          v165 = v72;
          v114 = CCValidateIsInstanceOfExpectedClass();
          v42 = v72;

          if (!v114)
          {
            goto LABEL_137;
          }

          CCPBDataWriterWriteStringField();
        }

        else
        {
          v42 = v72;
        }

        if (!v140)
        {
          v72 = v42;
          goto LABEL_134;
        }

        objc_opt_class();
        v164 = v42;
        v115 = CCValidateIsInstanceOfExpectedClass();
        v72 = v42;

        if (v115)
        {
          CCPBDataWriterWriteStringField();
LABEL_134:
          if (!v139)
          {
            v42 = v72;
            goto LABEL_143;
          }

          objc_opt_class();
          v163 = v72;
          v116 = CCValidateIsInstanceOfExpectedClass();
          v42 = v72;

          if (v116)
          {
            CCPBDataWriterWriteStringField();
LABEL_143:
            v48 = v36;
            if (!v138)
            {
              v49 = v37;
              v72 = v42;
              goto LABEL_147;
            }

            v49 = v37;
            objc_opt_class();
            v162 = v42;
            v119 = CCValidateIsInstanceOfExpectedClass();
            v72 = v42;

            if (v119)
            {
              CCPBDataWriterWriteStringField();
LABEL_147:
              if (!v137)
              {
                v42 = v72;
                goto LABEL_151;
              }

              objc_opt_class();
              v161 = v72;
              v120 = CCValidateIsInstanceOfExpectedClass();
              v42 = v72;

              if (v120)
              {
                v121 = [v137 data];
                CCPBDataWriterWriteDataField();

LABEL_151:
                if (!v135)
                {
                  v72 = v42;
                  goto LABEL_155;
                }

                objc_opt_class();
                v160 = v42;
                v122 = CCValidateIsInstanceOfExpectedClass();
                v72 = v42;

                if (v122)
                {
                  v123 = [v135 data];
                  CCPBDataWriterWriteDataField();

LABEL_155:
                  if (v136)
                  {
                    objc_opt_class();
                    v159 = v72;
                    v124 = CCValidateArrayValues();
                    v42 = v72;

                    if (!v124)
                    {
                      CCSetError();
                      v50 = 0;
                      v55 = self;
                      v33 = v132;
                      goto LABEL_140;
                    }

                    v157 = 0u;
                    v158 = 0u;
                    v155 = 0u;
                    v156 = 0u;
                    v125 = v136;
                    v126 = [v125 countByEnumeratingWithState:&v155 objects:v212 count:16];
                    if (v126)
                    {
                      v127 = v126;
                      v128 = *v156;
                      do
                      {
                        for (kk = 0; kk != v127; ++kk)
                        {
                          if (*v156 != v128)
                          {
                            objc_enumerationMutation(v125);
                          }

                          v130 = [*(*(&v155 + 1) + 8 * kk) data];
                          CCPBDataWriterWriteDataField();
                        }

                        v127 = [v125 countByEnumeratingWithState:&v155 objects:v212 count:16];
                      }

                      while (v127);
                    }

                    v33 = v132;
                  }

                  else
                  {
                    v42 = v72;
                  }

                  v131 = [v39 immutableData];
                  v55 = [(CCItemMessage *)self initWithData:v131 error:a28];

                  v50 = v55;
LABEL_140:
                  v43 = v151;
                  goto LABEL_141;
                }

                goto LABEL_132;
              }

LABEL_138:
              CCSetError();
              v50 = 0;
              goto LABEL_139;
            }

LABEL_132:
            CCSetError();
            v50 = 0;
            v42 = v72;
LABEL_139:
            v55 = self;
            goto LABEL_140;
          }

LABEL_137:
          v48 = v36;
          v49 = v37;
          goto LABEL_138;
        }

LABEL_131:
        v48 = v36;
        v49 = v37;
        goto LABEL_132;
      }

      CCSetError();
      v50 = 0;
      v42 = v57;
      goto LABEL_51;
    }

LABEL_25:
    v48 = v36;
    v49 = v37;
    CCSetError();
    v50 = 0;
    goto LABEL_26;
  }

LABEL_14:
  v48 = v36;
  v49 = v37;
  CCSetError();
  v50 = 0;
  v42 = v45;
LABEL_26:
  v55 = self;
LABEL_141:

  v117 = *MEMORY[0x1E69E9840];
  return v50;
}

+ (id)descriptionForTypeIdentifier:(unsigned __int16)a3
{
  if ((a3 - 19668) > 0x6D)
  {
    return 0;
  }

  else
  {
    return *(&off_1E73E6E98 + (a3 - 19668));
  }
}

@end