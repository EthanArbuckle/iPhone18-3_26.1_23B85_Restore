@interface CCToolKitToolComparisonPredicateComparisonTemplate
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolComparisonPredicateComparisonTemplate)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolComparisonPredicateComparisonTemplate)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5;
- (CCToolKitToolTypeInstance)beginsWith;
- (CCToolKitToolTypeInstance)contains;
- (CCToolKitToolTypeInstance)endsWith;
- (CCToolKitToolTypeInstance)equalTo;
- (CCToolKitToolTypeInstance)greaterThan;
- (CCToolKitToolTypeInstance)greaterThanOrEqualTo;
- (CCToolKitToolTypeInstance)inTheLast;
- (CCToolKitToolTypeInstance)inTheNext;
- (CCToolKitToolTypeInstance)isBetween;
- (CCToolKitToolTypeInstance)lessThan;
- (CCToolKitToolTypeInstance)lessThanOrEqualTo;
- (CCToolKitToolTypeInstance)notContains;
- (CCToolKitToolTypeInstance)notEqualTo;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolComparisonPredicateComparisonTemplate

- (CCToolKitToolComparisonPredicateComparisonTemplate)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v141[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"equalTo"];
    v10 = 0x1E73E5000uLL;
    if (v9)
    {
      v141[0] = 0;
      v11 = [[CCToolKitToolTypeInstance alloc] initWithJSONDictionary:v9 error:v141];
      v12 = v141[0];
      v13 = v12;
      if (!v11 || v12)
      {
        CCSetError();
        v26 = 0;
LABEL_124:

        goto LABEL_125;
      }

      v9 = v11;
    }

    v13 = [v6 objectForKeyedSubscript:@"notEqualTo"];
    if (v13)
    {
      v14 = [CCToolKitToolTypeInstance alloc];
      v140 = 0;
      v15 = [(CCToolKitToolTypeInstance *)v14 initWithJSONDictionary:v13 error:&v140];
      v16 = v140;
      v11 = v16;
      if (!v15 || v16)
      {
        CCSetError();
        v26 = 0;
LABEL_123:

        goto LABEL_124;
      }

      v13 = v15;
    }

    v11 = [v6 objectForKeyedSubscript:@"hasValue"];
    v126 = [v6 objectForKeyedSubscript:@"hasNoValue"];
    v17 = [v6 objectForKeyedSubscript:@"greaterThan"];
    if (v17)
    {
      v18 = [CCToolKitToolTypeInstance alloc];
      v139 = 0;
      v128 = v17;
      v17 = [(CCToolKitToolTypeInstance *)v18 initWithJSONDictionary:v17 error:&v139];
      v19 = v139;
      v20 = v19;
      if (!v17 || v19)
      {
        CCSetError();
        v26 = 0;
LABEL_122:

        v15 = v126;
        goto LABEL_123;
      }
    }

    v128 = v17;
    v21 = [v6 objectForKeyedSubscript:@"greaterThanOrEqualTo"];
    if (v21)
    {
      v22 = v21;
      v23 = [CCToolKitToolTypeInstance alloc];
      v138 = 0;
      v24 = v22;
      v20 = [(CCToolKitToolTypeInstance *)v23 initWithJSONDictionary:v22 error:&v138];
      v25 = v138;
      v17 = v25;
      v127 = v20;
      if (!v20 || v25)
      {
        CCSetError();
        v26 = 0;
        v20 = v24;
LABEL_121:

        goto LABEL_122;
      }

      v10 = 0x1E73E5000;
    }

    else
    {
      v20 = 0;
    }

    v27 = [v6 objectForKeyedSubscript:@"lessThan"];
    if (v27)
    {
      v124 = v13;
      v28 = v11;
      v29 = v8;
      v30 = v9;
      v31 = self;
      v32 = v27;
      v33 = objc_alloc(*(v10 + 4056));
      v137 = 0;
      v17 = v32;
      v34 = [v33 initWithJSONDictionary:v32 error:&v137];
      v35 = v137;
      if (!v34 || v35)
      {
        v127 = v35;
        CCSetError();
        v26 = 0;
        self = v31;
        v9 = v30;
        v8 = v29;
        v11 = v28;
        v13 = v124;
LABEL_120:

        goto LABEL_121;
      }

      v17 = v34;
      v10 = 0x1E73E5000;
      self = v31;
      v9 = v30;
      v8 = v29;
      v11 = v28;
      v13 = v124;
    }

    else
    {
      v17 = 0;
    }

    v36 = [v6 objectForKeyedSubscript:@"lessThanOrEqualTo"];
    if (v36)
    {
      v122 = v17;
      v37 = v20;
      v38 = v36;
      v39 = objc_alloc(*(v10 + 4056));
      v136 = 0;
      v127 = v38;
      v40 = [v39 initWithJSONDictionary:v38 error:&v136];
      v41 = v136;
      v34 = v41;
      v125 = v40;
      if (!v40 || v41)
      {
        CCSetError();
        v26 = 0;
        v20 = v37;
        v17 = v122;
LABEL_119:

        goto LABEL_120;
      }

      v127 = v40;
      v20 = v37;
      v17 = v122;
    }

    else
    {
      v127 = 0;
    }

    v42 = [v6 objectForKeyedSubscript:@"contains"];
    if (v42)
    {
      v119 = v20;
      v43 = [CCToolKitToolTypeInstance alloc];
      v135 = 0;
      v44 = v42;
      v42 = [(CCToolKitToolTypeInstance *)v43 initWithJSONDictionary:v42 error:&v135];
      v45 = v135;
      v123 = v42;
      if (!v42 || v45)
      {
        v125 = v45;
        CCSetError();
        v26 = 0;
        v34 = v44;
        v20 = v119;
        goto LABEL_118;
      }

      v20 = v119;
    }

    v46 = [v6 objectForKeyedSubscript:@"notContains"];
    v102 = v42;
    if (!v46)
    {
      v125 = 0;
LABEL_46:
      v51 = [v6 objectForKeyedSubscript:@"beginsWith"];
      if (v51)
      {
        v52 = v51;
        v53 = [CCToolKitToolTypeInstance alloc];
        v133 = 0;
        v123 = v52;
        v54 = [(CCToolKitToolTypeInstance *)v53 initWithJSONDictionary:v52 error:&v133];
        v55 = v133;
        if (!v54 || v55)
        {
          v100 = v54;
          v121 = v55;
          CCSetError();
          v26 = 0;
          v34 = v102;

LABEL_117:
          goto LABEL_118;
        }

        v123 = v54;
      }

      else
      {
        v123 = 0;
      }

      v56 = [v6 objectForKeyedSubscript:@"endsWith"];
      if (v56)
      {
        v57 = v56;
        v58 = [CCToolKitToolTypeInstance alloc];
        v132 = 0;
        v121 = v57;
        v59 = [(CCToolKitToolTypeInstance *)v58 initWithJSONDictionary:v57 error:&v132];
        v60 = v132;
        if (!v59 || v60)
        {
          v98 = v59;
          v101 = v60;
          CCSetError();
          v26 = 0;
          v34 = v102;

LABEL_116:
          goto LABEL_117;
        }

        v121 = v59;
      }

      else
      {
        v121 = 0;
      }

      v61 = [v6 objectForKeyedSubscript:@"inTheNext"];
      if (v61)
      {
        v62 = v61;
        v63 = [CCToolKitToolTypeInstance alloc];
        v131 = 0;
        v101 = v62;
        v64 = [(CCToolKitToolTypeInstance *)v63 initWithJSONDictionary:v62 error:&v131];
        v65 = v131;
        if (!v64 || v65)
        {
          v95 = v64;
          v99 = v65;
          CCSetError();
          v26 = 0;
          v34 = v102;

LABEL_115:
          goto LABEL_116;
        }

        v101 = v64;
      }

      else
      {
        v101 = 0;
      }

      v66 = [v6 objectForKeyedSubscript:@"inTheLast"];
      if (v66)
      {
        v67 = v66;
        v68 = [CCToolKitToolTypeInstance alloc];
        v130 = 0;
        v99 = v67;
        v69 = [(CCToolKitToolTypeInstance *)v68 initWithJSONDictionary:v67 error:&v130];
        v70 = v130;
        v97 = v69;
        if (!v69 || v70)
        {
          v96 = v70;
          CCSetError();
          v26 = 0;
          v34 = v102;
          goto LABEL_113;
        }

        v99 = v69;
      }

      else
      {
        v99 = 0;
      }

      v34 = v102;
      v96 = [v6 objectForKeyedSubscript:@"isToday"];
      v71 = [v6 objectForKeyedSubscript:@"isBetween"];
      if (!v71)
      {
        v74 = 0;
        goto LABEL_76;
      }

      v97 = v71;
      v72 = [CCToolKitToolTypeInstance alloc];
      v129 = 0;
      v80 = [(CCToolKitToolTypeInstance *)v72 initWithJSONDictionary:v97 error:&v129];
      v73 = v129;
      if (v80 && !v73)
      {

        v74 = v80;
LABEL_76:
        v97 = v74;
        if (v9)
        {
          v75 = v9;
          v76 = 1;
        }

        else
        {
          v76 = 0;
        }

        v77 = v9;
        if (v13)
        {
          v104 = v13;

          v77 = v104;
          v76 = 2;
        }

        if (v11)
        {
          v105 = v77;
          v81 = v11;

          v76 = 3;
          v77 = v81;
        }

        if (v126)
        {
          v106 = v77;
          v82 = v126;

          v76 = 4;
          v77 = v82;
        }

        if (v128)
        {
          v107 = v77;
          v83 = v128;

          v76 = 5;
          v77 = v83;
        }

        if (v20)
        {
          v108 = v77;
          v84 = v20;

          v76 = 6;
          v77 = v84;
        }

        if (v17)
        {
          v109 = v77;
          v85 = v17;

          v76 = 7;
          v77 = v85;
        }

        if (v127)
        {
          v110 = v77;
          v86 = v127;

          v76 = 8;
          v77 = v86;
        }

        if (v102)
        {
          v111 = v77;
          v87 = v102;

          v76 = 9;
          v77 = v87;
        }

        if (v125)
        {
          v112 = v77;
          v88 = v125;

          v76 = 10;
          v77 = v88;
        }

        if (v123)
        {
          v113 = v77;
          v89 = v123;

          v76 = 11;
          v77 = v89;
        }

        if (v121)
        {
          v114 = v77;
          v90 = v121;

          v76 = 12;
          v77 = v90;
        }

        if (v101)
        {
          v115 = v77;
          v91 = v101;

          v76 = 13;
          v77 = v91;
        }

        if (v99)
        {
          v116 = v77;
          v92 = v99;

          v76 = 14;
          v77 = v92;
        }

        if (v96)
        {
          v117 = v77;
          v93 = v96;

          v76 = 15;
          v77 = v93;
        }

        v118 = v77;
        if (v97)
        {
          v79 = v97;

          v94 = 16;
          v118 = v79;
        }

        else
        {
          v94 = v76;
        }

        v26 = [[CCToolKitToolComparisonPredicateComparisonTemplate alloc] initWithKind:v118 kindType:v94 error:a4];

        goto LABEL_113;
      }

      v103 = v73;
      CCSetError();

      v26 = 0;
LABEL_113:

      goto LABEL_115;
    }

    v47 = v46;
    v48 = [CCToolKitToolTypeInstance alloc];
    v134 = 0;
    v125 = v47;
    v49 = [(CCToolKitToolTypeInstance *)v48 initWithJSONDictionary:v47 error:&v134];
    v50 = v134;
    if (v49 && !v50)
    {

      v125 = v49;
      goto LABEL_46;
    }

    v120 = v49;
    v123 = v50;
    CCSetError();
    v26 = 0;
    v34 = v102;

LABEL_118:
    goto LABEL_119;
  }

  CCSetError();
  v26 = 0;
LABEL_125:

  return v26;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  kindType = self->_kindType;
  if (kindType == 1)
  {
    if (!self->_equalTo)
    {
      goto LABEL_46;
    }

    v5 = [(CCToolKitToolComparisonPredicateComparisonTemplate *)self equalTo];
    v6 = [v5 jsonDictionary];
    [v3 setObject:v6 forKeyedSubscript:@"equalTo"];

    kindType = self->_kindType;
  }

  if (kindType == 2)
  {
    if (!self->_notEqualTo)
    {
      goto LABEL_46;
    }

    v7 = [(CCToolKitToolComparisonPredicateComparisonTemplate *)self notEqualTo];
    v8 = [v7 jsonDictionary];
    [v3 setObject:v8 forKeyedSubscript:@"notEqualTo"];

    kindType = self->_kindType;
  }

  if (kindType == 3)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolComparisonPredicateComparisonTemplate hasValue](self, "hasValue")}];
    [v3 setObject:v9 forKeyedSubscript:@"hasValue"];

    kindType = self->_kindType;
  }

  if (kindType == 4)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolComparisonPredicateComparisonTemplate hasNoValue](self, "hasNoValue")}];
    [v3 setObject:v10 forKeyedSubscript:@"hasNoValue"];

    kindType = self->_kindType;
  }

  if (kindType == 5)
  {
    if (!self->_greaterThan)
    {
      goto LABEL_46;
    }

    v11 = [(CCToolKitToolComparisonPredicateComparisonTemplate *)self greaterThan];
    v12 = [v11 jsonDictionary];
    [v3 setObject:v12 forKeyedSubscript:@"greaterThan"];

    kindType = self->_kindType;
  }

  if (kindType == 6)
  {
    if (!self->_greaterThanOrEqualTo)
    {
      goto LABEL_46;
    }

    v13 = [(CCToolKitToolComparisonPredicateComparisonTemplate *)self greaterThanOrEqualTo];
    v14 = [v13 jsonDictionary];
    [v3 setObject:v14 forKeyedSubscript:@"greaterThanOrEqualTo"];

    kindType = self->_kindType;
  }

  if (kindType == 7)
  {
    if (!self->_lessThan)
    {
      goto LABEL_46;
    }

    v15 = [(CCToolKitToolComparisonPredicateComparisonTemplate *)self lessThan];
    v16 = [v15 jsonDictionary];
    [v3 setObject:v16 forKeyedSubscript:@"lessThan"];

    kindType = self->_kindType;
  }

  if (kindType == 8)
  {
    if (!self->_lessThanOrEqualTo)
    {
      goto LABEL_46;
    }

    v17 = [(CCToolKitToolComparisonPredicateComparisonTemplate *)self lessThanOrEqualTo];
    v18 = [v17 jsonDictionary];
    [v3 setObject:v18 forKeyedSubscript:@"lessThanOrEqualTo"];

    kindType = self->_kindType;
  }

  if (kindType == 9)
  {
    if (!self->_contains)
    {
      goto LABEL_46;
    }

    v19 = [(CCToolKitToolComparisonPredicateComparisonTemplate *)self contains];
    v20 = [v19 jsonDictionary];
    [v3 setObject:v20 forKeyedSubscript:@"contains"];

    kindType = self->_kindType;
  }

  if (kindType == 10)
  {
    if (!self->_notContains)
    {
      goto LABEL_46;
    }

    v21 = [(CCToolKitToolComparisonPredicateComparisonTemplate *)self notContains];
    v22 = [v21 jsonDictionary];
    [v3 setObject:v22 forKeyedSubscript:@"notContains"];

    kindType = self->_kindType;
  }

  if (kindType == 11)
  {
    if (!self->_beginsWith)
    {
      goto LABEL_46;
    }

    v23 = [(CCToolKitToolComparisonPredicateComparisonTemplate *)self beginsWith];
    v24 = [v23 jsonDictionary];
    [v3 setObject:v24 forKeyedSubscript:@"beginsWith"];

    kindType = self->_kindType;
  }

  if (kindType == 12)
  {
    if (!self->_endsWith)
    {
      goto LABEL_46;
    }

    v25 = [(CCToolKitToolComparisonPredicateComparisonTemplate *)self endsWith];
    v26 = [v25 jsonDictionary];
    [v3 setObject:v26 forKeyedSubscript:@"endsWith"];

    kindType = self->_kindType;
  }

  if (kindType == 13)
  {
    if (!self->_inTheNext)
    {
      goto LABEL_46;
    }

    v27 = [(CCToolKitToolComparisonPredicateComparisonTemplate *)self inTheNext];
    v28 = [v27 jsonDictionary];
    [v3 setObject:v28 forKeyedSubscript:@"inTheNext"];

    kindType = self->_kindType;
  }

  if (kindType == 14)
  {
    if (!self->_inTheLast)
    {
      goto LABEL_46;
    }

    v29 = [(CCToolKitToolComparisonPredicateComparisonTemplate *)self inTheLast];
    v30 = [v29 jsonDictionary];
    [v3 setObject:v30 forKeyedSubscript:@"inTheLast"];

    kindType = self->_kindType;
  }

  if (kindType == 15)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolComparisonPredicateComparisonTemplate isToday](self, "isToday")}];
    [v3 setObject:v31 forKeyedSubscript:@"isToday"];

    kindType = self->_kindType;
  }

  if (kindType == 16 && self->_isBetween)
  {
    v32 = [(CCToolKitToolComparisonPredicateComparisonTemplate *)self isBetween];
    v33 = [v32 jsonDictionary];
    [v3 setObject:v33 forKeyedSubscript:@"isBetween"];
  }

LABEL_46:
  v34 = [v3 copy];

  return v34;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69939A8];
  v25 = v5;
  if (self->_equalTo)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:*MEMORY[0x1E69939A8] subMessageValue:self->_equalTo];
    v25[2](v25, v7);
  }

  if (self->_notEqualTo)
  {
    v8 = objc_alloc(MEMORY[0x1E69939F0]);
    v9 = *v6;
    v10 = [v8 initWithFieldType:v9 subMessageValue:self->_notEqualTo];
    v25[2](v25, v10);
  }

  else
  {
    v9 = *v6;
  }

  v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_hasValue];
  v25[2](v25, v11);

  v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_hasNoValue];
  v25[2](v25, v12);

  if (self->_greaterThan)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 subMessageValue:self->_greaterThan];
    v25[2](v25, v13);
  }

  if (self->_greaterThanOrEqualTo)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 subMessageValue:self->_greaterThanOrEqualTo];
    v25[2](v25, v14);
  }

  if (self->_lessThan)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 subMessageValue:self->_lessThan];
    v25[2](v25, v15);
  }

  if (self->_lessThanOrEqualTo)
  {
    v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 subMessageValue:self->_lessThanOrEqualTo];
    v25[2](v25, v16);
  }

  if (self->_contains)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 subMessageValue:self->_contains];
    v25[2](v25, v17);
  }

  if (self->_notContains)
  {
    v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 subMessageValue:self->_notContains];
    v25[2](v25, v18);
  }

  if (self->_beginsWith)
  {
    v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 subMessageValue:self->_beginsWith];
    v25[2](v25, v19);
  }

  if (self->_endsWith)
  {
    v20 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 subMessageValue:self->_endsWith];
    v25[2](v25, v20);
  }

  if (self->_inTheNext)
  {
    v21 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 subMessageValue:self->_inTheNext];
    v25[2](v25, v21);
  }

  if (self->_inTheLast)
  {
    v22 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 subMessageValue:self->_inTheLast];
    v25[2](v25, v22);
  }

  v23 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 enumValue:self->_isToday];
  v25[2](v25, v23);

  if (self->_isBetween)
  {
    v24 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v9 subMessageValue:self->_isBetween];
    v25[2](v25, v24);
  }
}

- (CCToolKitToolTypeInstance)isBetween
{
  v2 = [(CCToolKitToolTypeInstance *)self->_isBetween copy];

  return v2;
}

- (CCToolKitToolTypeInstance)inTheLast
{
  v2 = [(CCToolKitToolTypeInstance *)self->_inTheLast copy];

  return v2;
}

- (CCToolKitToolTypeInstance)inTheNext
{
  v2 = [(CCToolKitToolTypeInstance *)self->_inTheNext copy];

  return v2;
}

- (CCToolKitToolTypeInstance)endsWith
{
  v2 = [(CCToolKitToolTypeInstance *)self->_endsWith copy];

  return v2;
}

- (CCToolKitToolTypeInstance)beginsWith
{
  v2 = [(CCToolKitToolTypeInstance *)self->_beginsWith copy];

  return v2;
}

- (CCToolKitToolTypeInstance)notContains
{
  v2 = [(CCToolKitToolTypeInstance *)self->_notContains copy];

  return v2;
}

- (CCToolKitToolTypeInstance)contains
{
  v2 = [(CCToolKitToolTypeInstance *)self->_contains copy];

  return v2;
}

- (CCToolKitToolTypeInstance)lessThanOrEqualTo
{
  v2 = [(CCToolKitToolTypeInstance *)self->_lessThanOrEqualTo copy];

  return v2;
}

- (CCToolKitToolTypeInstance)lessThan
{
  v2 = [(CCToolKitToolTypeInstance *)self->_lessThan copy];

  return v2;
}

- (CCToolKitToolTypeInstance)greaterThanOrEqualTo
{
  v2 = [(CCToolKitToolTypeInstance *)self->_greaterThanOrEqualTo copy];

  return v2;
}

- (CCToolKitToolTypeInstance)greaterThan
{
  v2 = [(CCToolKitToolTypeInstance *)self->_greaterThan copy];

  return v2;
}

- (CCToolKitToolTypeInstance)notEqualTo
{
  v2 = [(CCToolKitToolTypeInstance *)self->_notEqualTo copy];

  return v2;
}

- (CCToolKitToolTypeInstance)equalTo
{
  v2 = [(CCToolKitToolTypeInstance *)self->_equalTo copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v5];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] >= *&v6[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_100;
  }

  v10 = 0;
  v11 = MEMORY[0x1E6993AA0];
  do
  {
    if (*&v6[*v9])
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (!v12)
    {
      break;
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *v7;
      v17 = *&v6[v16];
      v18 = v17 + 1;
      if (v17 == -1 || v18 > *&v6[*v8])
      {
        break;
      }

      v19 = *(*&v6[*v11] + v17);
      *&v6[v16] = v18;
      v15 |= (v19 & 0x7F) << v13;
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      v13 += 7;
      v20 = v14++ >= 9;
      if (v20)
      {
        v21 = 0;
        if (*&v6[*v9])
        {
          goto LABEL_101;
        }

        goto LABEL_21;
      }
    }

    *&v6[*v9] = 1;
LABEL_17:
    v22 = *&v6[*v9];
    if (v22)
    {
      v21 = 0;
    }

    else
    {
      v21 = v15;
    }

    if (v22)
    {
      goto LABEL_101;
    }

LABEL_21:
    switch((v21 >> 3))
    {
      case 1u:
        v23 = [CCToolKitToolTypeInstance alloc];
        v24 = CCPBReaderReadDataNoCopy();
        v234 = 0;
        v25 = [(CCItemMessage *)v23 initWithData:v24 error:&v234];
        v10 = v234;
        equalTo = self->_equalTo;
        self->_equalTo = v25;

        if (!v10)
        {
          self->_kindType = 1;
          notEqualTo = self->_notEqualTo;
          self->_notEqualTo = 0;

          goto LABEL_59;
        }

        continue;
      case 2u:
        v118 = [CCToolKitToolTypeInstance alloc];
        v119 = CCPBReaderReadDataNoCopy();
        v233 = 0;
        v120 = [(CCItemMessage *)v118 initWithData:v119 error:&v233];
        v10 = v233;
        v121 = self->_notEqualTo;
        self->_notEqualTo = v120;

        if (!v10)
        {
          v122 = self->_equalTo;
          self->_equalTo = 0;

          self->_kindType = 2;
LABEL_59:
          self->_hasValue = 0;
          self->_hasNoValue = 0;
          greaterThan = self->_greaterThan;
          self->_greaterThan = 0;

          goto LABEL_60;
        }

        continue;
      case 3u:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        while (1)
        {
          v82 = *v7;
          v83 = *&v6[v82];
          v84 = v83 + 1;
          if (v83 == -1 || v84 > *&v6[*v8])
          {
            break;
          }

          v85 = *(*&v6[*v11] + v83);
          *&v6[v82] = v84;
          v81 |= (v85 & 0x7F) << v79;
          if ((v85 & 0x80) == 0)
          {
            goto LABEL_87;
          }

          v79 += 7;
          v20 = v80++ >= 9;
          if (v20)
          {
            LODWORD(v81) = 0;
            goto LABEL_89;
          }
        }

        *&v6[*v9] = 1;
LABEL_87:
        if (*&v6[*v9])
        {
          LODWORD(v81) = 0;
        }

LABEL_89:
        self->_hasValue = v81;
        v201 = self->_equalTo;
        self->_equalTo = 0;

        v202 = self->_notEqualTo;
        self->_notEqualTo = 0;

        self->_kindType = 3;
        self->_hasNoValue = 0;
        goto LABEL_94;
      case 4u:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        while (2)
        {
          v105 = *v7;
          v106 = *&v6[v105];
          v107 = v106 + 1;
          if (v106 == -1 || v107 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v108 = *(*&v6[*v11] + v106);
            *&v6[v105] = v107;
            v104 |= (v108 & 0x7F) << v102;
            if (v108 < 0)
            {
              v102 += 7;
              v20 = v103++ >= 9;
              if (v20)
              {
                LODWORD(v104) = 0;
                goto LABEL_93;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v104) = 0;
        }

LABEL_93:
        self->_hasNoValue = v104;
        v203 = self->_equalTo;
        self->_equalTo = 0;

        v204 = self->_notEqualTo;
        self->_notEqualTo = 0;

        self->_hasValue = 0;
        self->_kindType = 4;
LABEL_94:
        v205 = self->_greaterThan;
        self->_greaterThan = 0;

        greaterThanOrEqualTo = self->_greaterThanOrEqualTo;
        self->_greaterThanOrEqualTo = 0;

        lessThan = self->_lessThan;
        self->_lessThan = 0;

        lessThanOrEqualTo = self->_lessThanOrEqualTo;
        self->_lessThanOrEqualTo = 0;

        contains = self->_contains;
        self->_contains = 0;

        notContains = self->_notContains;
        self->_notContains = 0;

        beginsWith = self->_beginsWith;
        self->_beginsWith = 0;

        endsWith = self->_endsWith;
        self->_endsWith = 0;

        inTheNext = self->_inTheNext;
        self->_inTheNext = 0;

        inTheLast = self->_inTheLast;
        self->_inTheLast = 0;

        self->_isToday = 0;
        goto LABEL_95;
      case 5u:
        v48 = [CCToolKitToolTypeInstance alloc];
        v49 = CCPBReaderReadDataNoCopy();
        v232 = 0;
        v50 = [(CCItemMessage *)v48 initWithData:v49 error:&v232];
        v10 = v232;
        v51 = self->_greaterThan;
        self->_greaterThan = v50;

        if (v10)
        {
          continue;
        }

        v52 = self->_equalTo;
        self->_equalTo = 0;

        v53 = self->_notEqualTo;
        self->_notEqualTo = 0;

        self->_hasValue = 0;
        self->_hasNoValue = 0;
        self->_kindType = 5;
LABEL_60:
        v124 = self->_greaterThanOrEqualTo;
        self->_greaterThanOrEqualTo = 0;

        goto LABEL_63;
      case 6u:
        v125 = [CCToolKitToolTypeInstance alloc];
        v126 = CCPBReaderReadDataNoCopy();
        v231 = 0;
        v127 = [(CCItemMessage *)v125 initWithData:v126 error:&v231];
        v10 = v231;
        v128 = self->_greaterThanOrEqualTo;
        self->_greaterThanOrEqualTo = v127;

        if (v10)
        {
          continue;
        }

        v129 = self->_equalTo;
        self->_equalTo = 0;

        v130 = self->_notEqualTo;
        self->_notEqualTo = 0;

        self->_hasValue = 0;
        self->_hasNoValue = 0;
        v131 = self->_greaterThan;
        self->_greaterThan = 0;

        self->_kindType = 6;
LABEL_63:
        v132 = self->_lessThan;
        self->_lessThan = 0;

        goto LABEL_64;
      case 7u:
        v156 = [CCToolKitToolTypeInstance alloc];
        v157 = CCPBReaderReadDataNoCopy();
        v230 = 0;
        v158 = [(CCItemMessage *)v156 initWithData:v157 error:&v230];
        v10 = v230;
        v159 = self->_lessThan;
        self->_lessThan = v158;

        if (v10)
        {
          continue;
        }

        v160 = self->_equalTo;
        self->_equalTo = 0;

        v161 = self->_notEqualTo;
        self->_notEqualTo = 0;

        self->_hasValue = 0;
        self->_hasNoValue = 0;
        v162 = self->_greaterThan;
        self->_greaterThan = 0;

        v163 = self->_greaterThanOrEqualTo;
        self->_greaterThanOrEqualTo = 0;

        self->_kindType = 7;
LABEL_64:
        v133 = self->_lessThanOrEqualTo;
        self->_lessThanOrEqualTo = 0;

        goto LABEL_65;
      case 8u:
        v109 = [CCToolKitToolTypeInstance alloc];
        v110 = CCPBReaderReadDataNoCopy();
        v229 = 0;
        v111 = [(CCItemMessage *)v109 initWithData:v110 error:&v229];
        v10 = v229;
        v112 = self->_lessThanOrEqualTo;
        self->_lessThanOrEqualTo = v111;

        if (v10)
        {
          continue;
        }

        v113 = self->_equalTo;
        self->_equalTo = 0;

        v114 = self->_notEqualTo;
        self->_notEqualTo = 0;

        self->_hasValue = 0;
        self->_hasNoValue = 0;
        v115 = self->_greaterThan;
        self->_greaterThan = 0;

        v116 = self->_greaterThanOrEqualTo;
        self->_greaterThanOrEqualTo = 0;

        v117 = self->_lessThan;
        self->_lessThan = 0;

        self->_kindType = 8;
LABEL_65:
        v134 = self->_contains;
        self->_contains = 0;

        goto LABEL_66;
      case 9u:
        v176 = [CCToolKitToolTypeInstance alloc];
        v177 = CCPBReaderReadDataNoCopy();
        v228 = 0;
        v178 = [(CCItemMessage *)v176 initWithData:v177 error:&v228];
        v10 = v228;
        v179 = self->_contains;
        self->_contains = v178;

        if (v10)
        {
          continue;
        }

        v180 = self->_equalTo;
        self->_equalTo = 0;

        v181 = self->_notEqualTo;
        self->_notEqualTo = 0;

        self->_hasValue = 0;
        self->_hasNoValue = 0;
        v182 = self->_greaterThan;
        self->_greaterThan = 0;

        v183 = self->_greaterThanOrEqualTo;
        self->_greaterThanOrEqualTo = 0;

        v184 = self->_lessThan;
        self->_lessThan = 0;

        v185 = self->_lessThanOrEqualTo;
        self->_lessThanOrEqualTo = 0;

        self->_kindType = 9;
LABEL_66:
        v135 = self->_notContains;
        self->_notContains = 0;

        goto LABEL_67;
      case 0xAu:
        v68 = [CCToolKitToolTypeInstance alloc];
        v69 = CCPBReaderReadDataNoCopy();
        v227 = 0;
        v70 = [(CCItemMessage *)v68 initWithData:v69 error:&v227];
        v10 = v227;
        v71 = self->_notContains;
        self->_notContains = v70;

        if (v10)
        {
          continue;
        }

        v72 = self->_equalTo;
        self->_equalTo = 0;

        v73 = self->_notEqualTo;
        self->_notEqualTo = 0;

        self->_hasValue = 0;
        self->_hasNoValue = 0;
        v74 = self->_greaterThan;
        self->_greaterThan = 0;

        v75 = self->_greaterThanOrEqualTo;
        self->_greaterThanOrEqualTo = 0;

        v76 = self->_lessThan;
        self->_lessThan = 0;

        v77 = self->_lessThanOrEqualTo;
        self->_lessThanOrEqualTo = 0;

        v78 = self->_contains;
        self->_contains = 0;

        self->_kindType = 10;
LABEL_67:
        v136 = self->_beginsWith;
        self->_beginsWith = 0;

        goto LABEL_68;
      case 0xBu:
        v164 = [CCToolKitToolTypeInstance alloc];
        v165 = CCPBReaderReadDataNoCopy();
        v226 = 0;
        v166 = [(CCItemMessage *)v164 initWithData:v165 error:&v226];
        v10 = v226;
        v167 = self->_beginsWith;
        self->_beginsWith = v166;

        if (v10)
        {
          continue;
        }

        v168 = self->_equalTo;
        self->_equalTo = 0;

        v169 = self->_notEqualTo;
        self->_notEqualTo = 0;

        self->_hasValue = 0;
        self->_hasNoValue = 0;
        v170 = self->_greaterThan;
        self->_greaterThan = 0;

        v171 = self->_greaterThanOrEqualTo;
        self->_greaterThanOrEqualTo = 0;

        v172 = self->_lessThan;
        self->_lessThan = 0;

        v173 = self->_lessThanOrEqualTo;
        self->_lessThanOrEqualTo = 0;

        v174 = self->_contains;
        self->_contains = 0;

        v175 = self->_notContains;
        self->_notContains = 0;

        self->_kindType = 11;
LABEL_68:
        v137 = self->_endsWith;
        self->_endsWith = 0;

        goto LABEL_69;
      case 0xCu:
        v35 = [CCToolKitToolTypeInstance alloc];
        v36 = CCPBReaderReadDataNoCopy();
        v225 = 0;
        v37 = [(CCItemMessage *)v35 initWithData:v36 error:&v225];
        v10 = v225;
        v38 = self->_endsWith;
        self->_endsWith = v37;

        if (v10)
        {
          continue;
        }

        v39 = self->_equalTo;
        self->_equalTo = 0;

        v40 = self->_notEqualTo;
        self->_notEqualTo = 0;

        self->_hasValue = 0;
        self->_hasNoValue = 0;
        v41 = self->_greaterThan;
        self->_greaterThan = 0;

        v42 = self->_greaterThanOrEqualTo;
        self->_greaterThanOrEqualTo = 0;

        v43 = self->_lessThan;
        self->_lessThan = 0;

        v44 = self->_lessThanOrEqualTo;
        self->_lessThanOrEqualTo = 0;

        v45 = self->_contains;
        self->_contains = 0;

        v46 = self->_notContains;
        self->_notContains = 0;

        v47 = self->_beginsWith;
        self->_beginsWith = 0;

        self->_kindType = 12;
LABEL_69:
        v138 = self->_inTheNext;
        self->_inTheNext = 0;

        goto LABEL_70;
      case 0xDu:
        v54 = [CCToolKitToolTypeInstance alloc];
        v55 = CCPBReaderReadDataNoCopy();
        v224 = 0;
        v56 = [(CCItemMessage *)v54 initWithData:v55 error:&v224];
        v10 = v224;
        v57 = self->_inTheNext;
        self->_inTheNext = v56;

        if (v10)
        {
          continue;
        }

        v58 = self->_equalTo;
        self->_equalTo = 0;

        v59 = self->_notEqualTo;
        self->_notEqualTo = 0;

        self->_hasValue = 0;
        self->_hasNoValue = 0;
        v60 = self->_greaterThan;
        self->_greaterThan = 0;

        v61 = self->_greaterThanOrEqualTo;
        self->_greaterThanOrEqualTo = 0;

        v62 = self->_lessThan;
        self->_lessThan = 0;

        v63 = self->_lessThanOrEqualTo;
        self->_lessThanOrEqualTo = 0;

        v64 = self->_contains;
        self->_contains = 0;

        v65 = self->_notContains;
        self->_notContains = 0;

        v66 = self->_beginsWith;
        self->_beginsWith = 0;

        v67 = self->_endsWith;
        self->_endsWith = 0;

        self->_kindType = 13;
LABEL_70:
        v139 = self->_inTheLast;
        self->_inTheLast = 0;

        goto LABEL_71;
      case 0xEu:
        v141 = [CCToolKitToolTypeInstance alloc];
        v142 = CCPBReaderReadDataNoCopy();
        v223 = 0;
        v143 = [(CCItemMessage *)v141 initWithData:v142 error:&v223];
        v10 = v223;
        v144 = self->_inTheLast;
        self->_inTheLast = v143;

        if (v10)
        {
          continue;
        }

        v145 = self->_equalTo;
        self->_equalTo = 0;

        v146 = self->_notEqualTo;
        self->_notEqualTo = 0;

        self->_hasValue = 0;
        self->_hasNoValue = 0;
        v147 = self->_greaterThan;
        self->_greaterThan = 0;

        v148 = self->_greaterThanOrEqualTo;
        self->_greaterThanOrEqualTo = 0;

        v149 = self->_lessThan;
        self->_lessThan = 0;

        v150 = self->_lessThanOrEqualTo;
        self->_lessThanOrEqualTo = 0;

        v151 = self->_contains;
        self->_contains = 0;

        v152 = self->_notContains;
        self->_notContains = 0;

        v153 = self->_beginsWith;
        self->_beginsWith = 0;

        v154 = self->_endsWith;
        self->_endsWith = 0;

        v155 = self->_inTheNext;
        self->_inTheNext = 0;

        self->_kindType = 14;
LABEL_71:
        self->_isToday = 0;
        isBetween = self->_isBetween;
        self->_isBetween = 0;

        continue;
      case 0xFu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        break;
      case 0x10u:
        v86 = [CCToolKitToolTypeInstance alloc];
        v87 = CCPBReaderReadDataNoCopy();
        v222 = 0;
        v88 = [(CCItemMessage *)v86 initWithData:v87 error:&v222];
        v10 = v222;
        v89 = self->_isBetween;
        self->_isBetween = v88;

        if (!v10)
        {
          v90 = self->_equalTo;
          self->_equalTo = 0;

          v91 = self->_notEqualTo;
          self->_notEqualTo = 0;

          self->_hasValue = 0;
          self->_hasNoValue = 0;
          v92 = self->_greaterThan;
          self->_greaterThan = 0;

          v93 = self->_greaterThanOrEqualTo;
          self->_greaterThanOrEqualTo = 0;

          v94 = self->_lessThan;
          self->_lessThan = 0;

          v95 = self->_lessThanOrEqualTo;
          self->_lessThanOrEqualTo = 0;

          v96 = self->_contains;
          self->_contains = 0;

          v97 = self->_notContains;
          self->_notContains = 0;

          v98 = self->_beginsWith;
          self->_beginsWith = 0;

          v99 = self->_endsWith;
          self->_endsWith = 0;

          v100 = self->_inTheNext;
          self->_inTheNext = 0;

          v101 = self->_inTheLast;
          self->_inTheLast = 0;

          self->_isToday = 0;
          self->_kindType = 16;
        }

        continue;
      default:
        if (CCPBReaderSkipValueWithTag())
        {
          goto LABEL_96;
        }

        v186 = objc_opt_class();
        v187 = NSStringFromClass(v186);
        v188 = *&v6[*v9];
        v10 = CCSkipFieldErrorForMessage();

        continue;
    }

    while (1)
    {
      v31 = *v7;
      v32 = *&v6[v31];
      v33 = v32 + 1;
      if (v32 == -1 || v33 > *&v6[*v8])
      {
        break;
      }

      v34 = *(*&v6[*v11] + v32);
      *&v6[v31] = v33;
      v30 |= (v34 & 0x7F) << v28;
      if ((v34 & 0x80) == 0)
      {
        goto LABEL_83;
      }

      v28 += 7;
      v20 = v29++ >= 9;
      if (v20)
      {
        LODWORD(v30) = 0;
        goto LABEL_85;
      }
    }

    *&v6[*v9] = 1;
LABEL_83:
    if (*&v6[*v9])
    {
      LODWORD(v30) = 0;
    }

LABEL_85:
    self->_isToday = v30;
    v189 = self->_equalTo;
    self->_equalTo = 0;

    v190 = self->_notEqualTo;
    self->_notEqualTo = 0;

    self->_hasValue = 0;
    self->_hasNoValue = 0;
    v191 = self->_greaterThan;
    self->_greaterThan = 0;

    v192 = self->_greaterThanOrEqualTo;
    self->_greaterThanOrEqualTo = 0;

    v193 = self->_lessThan;
    self->_lessThan = 0;

    v194 = self->_lessThanOrEqualTo;
    self->_lessThanOrEqualTo = 0;

    v195 = self->_contains;
    self->_contains = 0;

    v196 = self->_notContains;
    self->_notContains = 0;

    v197 = self->_beginsWith;
    self->_beginsWith = 0;

    v198 = self->_endsWith;
    self->_endsWith = 0;

    v199 = self->_inTheNext;
    self->_inTheNext = 0;

    v200 = self->_inTheLast;
    self->_inTheLast = 0;

    self->_kindType = 15;
LABEL_95:
    v215 = self->_isBetween;
    self->_isBetween = 0;

LABEL_96:
    v10 = 0;
  }

  while (*&v6[*v7] < *&v6[*v8]);
  if (v10)
  {
    CCSetError();
  }

  else
  {
LABEL_100:
    if (!*&v6[*v9])
    {
      v10 = 0;
      v220 = 1;
      goto LABEL_104;
    }

LABEL_101:
    v216 = objc_opt_class();
    v217 = NSStringFromClass(v216);
    v218 = *&v6[*v9];
    v219 = CCInvalidBufferErrorForMessage();
    CCSetError();

    v10 = 0;
  }

  v220 = 0;
LABEL_104:

  return v220;
}

- (CCToolKitToolComparisonPredicateComparisonTemplate)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = objc_opt_new();
  if (v8 && a4 == 1)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (IsInstanceOfExpectedClass)
    {
      goto LABEL_8;
    }

LABEL_69:
    CCSetError();
    v15 = 0;
    goto LABEL_70;
  }

  if (!v8 || a4 != 2)
  {
    if (v8 && a4 == 3)
    {
      objc_opt_class();
      v16 = CCValidateIsInstanceOfExpectedClass();
      v17 = 0;
      if (v16)
      {
        [v8 unsignedIntegerValue];
        v18 = CCValidateEnumField();
        v11 = v17;

        if (!v18)
        {
          goto LABEL_9;
        }

LABEL_19:
        CCPBDataWriterWriteUint32Field();
        goto LABEL_9;
      }
    }

    else if (v8 && a4 == 4)
    {
      objc_opt_class();
      v19 = CCValidateIsInstanceOfExpectedClass();
      v17 = 0;
      if (v19)
      {
        [v8 unsignedIntegerValue];
        v20 = CCValidateEnumField();
        v11 = v17;

        if (!v20)
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }
    }

    else
    {
      if (v8 && a4 == 5)
      {
        objc_opt_class();
        v21 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v21)
        {
          goto LABEL_8;
        }

        goto LABEL_69;
      }

      if (v8 && a4 == 6)
      {
        objc_opt_class();
        v22 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v22)
        {
          goto LABEL_8;
        }

        goto LABEL_69;
      }

      if (v8 && a4 == 7)
      {
        objc_opt_class();
        v23 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v23)
        {
          goto LABEL_8;
        }

        goto LABEL_69;
      }

      if (v8 && a4 == 8)
      {
        objc_opt_class();
        v24 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v24)
        {
          goto LABEL_8;
        }

        goto LABEL_69;
      }

      if (v8 && a4 == 9)
      {
        objc_opt_class();
        v25 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v25)
        {
          goto LABEL_8;
        }

        goto LABEL_69;
      }

      if (v8 && a4 == 10)
      {
        objc_opt_class();
        v26 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v26)
        {
          goto LABEL_8;
        }

        goto LABEL_69;
      }

      if (v8 && a4 == 11)
      {
        objc_opt_class();
        v27 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v27)
        {
          goto LABEL_8;
        }

        goto LABEL_69;
      }

      if (v8 && a4 == 12)
      {
        objc_opt_class();
        v28 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v28)
        {
          goto LABEL_8;
        }

        goto LABEL_69;
      }

      if (v8 && a4 == 13)
      {
        objc_opt_class();
        v29 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v29)
        {
          goto LABEL_8;
        }

        goto LABEL_69;
      }

      if (v8 && a4 == 14)
      {
        objc_opt_class();
        v30 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v30)
        {
          goto LABEL_8;
        }

        goto LABEL_69;
      }

      if (!v8 || a4 != 15)
      {
        v33 = a4;
        v11 = 0;
        if (!v8 || v33 != 16)
        {
          goto LABEL_9;
        }

        objc_opt_class();
        v34 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v34)
        {
          goto LABEL_8;
        }

        goto LABEL_69;
      }

      objc_opt_class();
      v31 = CCValidateIsInstanceOfExpectedClass();
      v17 = 0;
      if (v31)
      {
        [v8 unsignedIntegerValue];
        v32 = CCValidateEnumField();
        v11 = v17;

        if (!v32)
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }
    }

    CCSetError();
    v15 = 0;
    v11 = v17;
    goto LABEL_70;
  }

  objc_opt_class();
  v12 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if (!v12)
  {
    goto LABEL_69;
  }

LABEL_8:
  v13 = [v8 data];
  CCPBDataWriterWriteDataField();

LABEL_9:
  v14 = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:v14 error:a5];

  v15 = self;
LABEL_70:

  return v15;
}

@end