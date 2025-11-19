@interface NURuleSystem
- (NURuleSystem)init;
- (NURuleSystem)initWithCoder:(id)a3;
- (double)gradeForFact:(id)a3;
- (double)maximumGradeForFacts:(id)a3;
- (double)minimumGradeForFacts:(id)a3;
- (id)debugDescription;
- (id)debugQuickLookObject;
- (void)_addRuleToAgenda:(id)a3;
- (void)addRule:(id)a3;
- (void)addRulesFromArray:(id)a3;
- (void)assertFact:(id)a3 grade:(double)a4;
- (void)encodeWithCoder:(id)a3;
- (void)evaluate;
- (void)removeAllRules;
- (void)reset;
- (void)resetAndEvaluateWithInitialState:(id)a3;
- (void)retractFact:(id)a3 grade:(double)a4;
- (void)setStateObject:(id)a3 forKey:(id)a4;
@end

@implementation NURuleSystem

- (id)debugQuickLookObject
{
  v92 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 appendString:@"<html>"];
  [v3 appendString:@"<body>"];
  [v3 appendString:@"<style>"];
  [v3 appendString:@"body { background-color: white; } "];
  [v3 appendString:@"h1 { color: black; margin-left: 2px; } "];
  [v3 appendString:@"h2 { color: black; margin-left: 1px; } "];
  [v3 appendString:@"table { color: black; margin-left: 0px; border: 0px solid white; } "];
  [v3 appendString:@"td { color: black; } "];
  [v3 appendString:{@"p, pre { color: black; } "}];
  [v3 appendString:@"</style>"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<h1>%@</h1>", v5];

  [v3 appendString:@"<h2>Constants</h2>"];
  [v3 appendString:@"<table>"];
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = self->_constants;
  v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v82 objects:v91 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v83;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v83 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v82 + 1) + 8 * v10);
        [v3 appendString:@"<tr>"];
        v8 = (v11 + 1);
        v13 = [(NSMutableDictionary *)self->_constants objectForKeyedSubscript:v12];
        [v3 appendFormat:@"<td>%d.</td><td>%@</td><td>%@</td>", v11, v12, v13];

        [v3 appendString:@"</tr>"];
        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v82 objects:v91 count:16];
    }

    while (v7);
  }

  [v3 appendString:@"</table><br />"];
  [v3 appendString:@"<h2>State</h2>"];
  [v3 appendString:@"<table>"];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obja = self->_state;
  v14 = [(NSMutableDictionary *)obja countByEnumeratingWithState:&v78 objects:v90 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v79;
    do
    {
      v18 = 0;
      v19 = v16;
      do
      {
        if (*v79 != v17)
        {
          objc_enumerationMutation(obja);
        }

        v20 = *(*(&v78 + 1) + 8 * v18);
        [v3 appendString:@"<tr>"];
        v16 = (v19 + 1);
        v21 = [(NSMutableDictionary *)self->_state objectForKeyedSubscript:v20];
        [v3 appendFormat:@"<td>%d.</td><td>%@</td><td>%@</td>", v19, v20, v21];

        [v3 appendString:@"</tr>"];
        ++v18;
        v19 = v16;
      }

      while (v15 != v18);
      v15 = [(NSMutableDictionary *)obja countByEnumeratingWithState:&v78 objects:v90 count:16];
    }

    while (v15);
  }

  [v3 appendString:@"</table><br />"];
  [v3 appendString:@"<h2>Rules</h2>"];
  [v3 appendString:@"<table>"];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  objb = self->_rules;
  v22 = [(NSMutableArray *)objb countByEnumeratingWithState:&v74 objects:v89 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v25 = *v75;
    do
    {
      v26 = 0;
      v27 = v24;
      do
      {
        if (*v75 != v25)
        {
          objc_enumerationMutation(objb);
        }

        v28 = *(*(&v74 + 1) + 8 * v26);
        [v3 appendString:@"<tr>"];
        v24 = (v27 + 1);
        v29 = [v28 debugDescription];
        [v3 appendFormat:@"<td>%d.</td><td>%@</td>", v27, v29];

        [v3 appendString:@"</tr>"];
        ++v26;
        v27 = v24;
      }

      while (v23 != v26);
      v23 = [(NSMutableArray *)objb countByEnumeratingWithState:&v74 objects:v89 count:16];
    }

    while (v23);
  }

  [v3 appendString:@"</table><br />"];
  [v3 appendString:@"<h2>Facts</h2>"];
  [v3 appendString:@"<table>"];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  objc = [(NSMapTable *)self->_gradeByFact keyEnumerator];
  v30 = [objc countByEnumeratingWithState:&v70 objects:v88 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = 0;
    v33 = *v71;
    do
    {
      v34 = 0;
      v35 = v32;
      do
      {
        if (*v71 != v33)
        {
          objc_enumerationMutation(objc);
        }

        v36 = *(*(&v70 + 1) + 8 * v34);
        [v3 appendString:@"<tr>"];
        v32 = (v35 + 1);
        v37 = [(NSMapTable *)self->_gradeByFact objectForKey:v36];
        [v3 appendFormat:@"<td>%d.</td><td>%@</td><td>%@</td>", v35, v36, v37];

        [v3 appendString:@"</tr>"];
        ++v34;
        v35 = v32;
      }

      while (v31 != v34);
      v31 = [objc countByEnumeratingWithState:&v70 objects:v88 count:16];
    }

    while (v31);
  }

  [v3 appendString:@"</table><br />"];
  [v3 appendString:@"<h2>Agenda</h2>"];
  [v3 appendString:@"<table>"];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  objd = self->_agenda;
  v38 = [(NSMutableArray *)objd countByEnumeratingWithState:&v66 objects:v87 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v67;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v67 != v40)
        {
          objc_enumerationMutation(objd);
        }

        v42 = *(*(&v66 + 1) + 8 * i);
        v43 = [(NSMutableArray *)self->_rules indexOfObject:v42];
        [v3 appendString:@"<tr>"];
        v44 = [v42 debugDescription];
        [v3 appendFormat:@"<td>%d.</td><td>%@</td>", v43, v44];

        [v3 appendString:@"</tr>"];
      }

      v39 = [(NSMutableArray *)objd countByEnumeratingWithState:&v66 objects:v87 count:16];
    }

    while (v39);
  }

  [v3 appendString:@"</table><br />"];
  [v3 appendString:@"<h2>Executed</h2>"];
  [v3 appendString:@"<table>"];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obje = self->_executed;
  v45 = [(NSMutableArray *)obje countByEnumeratingWithState:&v62 objects:v86 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v63;
    do
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v63 != v47)
        {
          objc_enumerationMutation(obje);
        }

        v49 = *(*(&v62 + 1) + 8 * j);
        v50 = [(NSMutableArray *)self->_rules indexOfObject:v49];
        [v3 appendString:@"<tr>"];
        v51 = [v49 debugDescription];
        [v3 appendFormat:@"<td>%d.</td><td>%@</td>", v50, v51];

        [v3 appendString:@"</tr>"];
      }

      v46 = [(NSMutableArray *)obje countByEnumeratingWithState:&v62 objects:v86 count:16];
    }

    while (v46);
  }

  [v3 appendString:@"</table><br />"];
  [v3 appendString:@"<h2>Run Log</h2>"];
  [v3 appendString:@"<pre>"];
  [v3 appendString:self->_runLog];
  [v3 appendString:@"</pre>"];
  [v3 appendString:@"</body>"];
  [v3 appendString:@"</html>"];
  v52 = objc_alloc(MEMORY[0x1E696AAB0]);
  v53 = [v3 dataUsingEncoding:4];
  v54 = [v52 initWithData:v53 options:&unk_1F3F82A18 documentAttributes:0 error:0];

  return v54;
}

- (id)debugDescription
{
  v80 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@, %p>\n", v5, self];

  [v3 appendString:@".constants {\n"];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v6 = [(NSMutableDictionary *)self->_constants allKeys];
  v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_28345];

  v8 = [v7 countByEnumeratingWithState:&v70 objects:v79 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v71;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v71 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v70 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_constants objectForKeyedSubscript:v12];
        [v3 appendFormat:@"%@ = %@, \n", v12, v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v70 objects:v79 count:16];
    }

    while (v9);
  }

  [v3 appendString:@"}\n"];
  [v3 appendString:@".state {\n"];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v14 = [(NSMutableDictionary *)self->_state allKeys];
  v15 = [v14 sortedArrayUsingComparator:&__block_literal_global_28345];

  v16 = [v15 countByEnumeratingWithState:&v66 objects:v78 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v67;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v67 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v66 + 1) + 8 * j);
        v21 = [(NSMutableDictionary *)self->_state objectForKeyedSubscript:v20];
        [v3 appendFormat:@"%@ = %@, \n", v20, v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v66 objects:v78 count:16];
    }

    while (v17);
  }

  [v3 appendString:@"}\n"];
  [v3 appendString:@".rules {\n"];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v22 = self->_rules;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v62 objects:v77 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    v26 = *v63;
    do
    {
      v27 = 0;
      v28 = v25;
      do
      {
        if (*v63 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v25 = (v28 + 1);
        v29 = [*(*(&v62 + 1) + 8 * v27) debugDescription];
        [v3 appendFormat:@"%d: %@, \n", v28, v29];

        ++v27;
        v28 = v25;
      }

      while (v24 != v27);
      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v62 objects:v77 count:16];
    }

    while (v24);
  }

  [v3 appendString:@"}\n"];
  [v3 appendString:@".facts {\n"];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v30 = [(NSMapTable *)self->_gradeByFact keyEnumerator];
  v31 = [v30 allObjects];
  v32 = [v31 sortedArrayUsingComparator:&__block_literal_global_28345];

  v33 = [v32 countByEnumeratingWithState:&v58 objects:v76 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v59;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v59 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v58 + 1) + 8 * k);
        v38 = [(NSMapTable *)self->_gradeByFact objectForKey:v37];
        [v3 appendFormat:@"%@ = %@, \n", v37, v38];
      }

      v34 = [v32 countByEnumeratingWithState:&v58 objects:v76 count:16];
    }

    while (v34);
  }

  [v3 appendString:@"}\n"];
  [v3 appendString:@".agenda { "];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v39 = self->_agenda;
  v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v54 objects:v75 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v55;
    do
    {
      for (m = 0; m != v41; ++m)
      {
        if (*v55 != v42)
        {
          objc_enumerationMutation(v39);
        }

        [v3 appendFormat:@"%d, ", -[NSMutableArray indexOfObject:](self->_rules, "indexOfObject:", *(*(&v54 + 1) + 8 * m))];
      }

      v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v54 objects:v75 count:16];
    }

    while (v41);
  }

  [v3 appendString:@"}\n"];
  [v3 appendString:@".executed { "];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v44 = self->_executed;
  v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v50 objects:v74 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v51;
    do
    {
      for (n = 0; n != v46; ++n)
      {
        if (*v51 != v47)
        {
          objc_enumerationMutation(v44);
        }

        [v3 appendFormat:@"%d, ", -[NSMutableArray indexOfObject:](self->_rules, "indexOfObject:", *(*(&v50 + 1) + 8 * n))];
      }

      v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v50 objects:v74 count:16];
    }

    while (v46);
  }

  [v3 appendString:@"}\n"];
  [v3 appendString:@".runlog {\n"];
  [v3 appendString:self->_runLog];
  [v3 appendString:@"}\n"];

  return v3;
}

- (void)reset
{
  v13 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->_agenda removeAllObjects];
  [(NSMutableArray *)self->_executed removeAllObjects];
  [(NSMapTable *)self->_gradeByFact removeAllObjects];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_rules;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NURuleSystem *)self _addRuleToAgenda:*(*(&v8 + 1) + 8 * v7++), v8];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableString *)self->_runLog deleteCharactersInRange:0, [(NSMutableString *)self->_runLog length]];
}

- (void)retractFact:(id)a3 grade:(double)a4
{
  v13 = a3;
  v6 = [(NSMapTable *)self->_gradeByFact objectForKey:v13];
  [v6 doubleValue];
  v8 = v7;

  v9 = v13;
  if (v8 != 0.0)
  {
    v10 = fmax(v8 - a4, 0.0);
    if (self->_enableLogging)
    {
      [(NSMutableString *)self->_runLog appendFormat:@"retracted '%@' by -%.2f to %.2f\n", v13, *&a4, *&v10];
    }

    v9 = v13;
    if (v10 != v8)
    {
      gradeByFact = self->_gradeByFact;
      v12 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
      [(NSMapTable *)gradeByFact setObject:v12 forKey:v13];

      [(NURuleSystem *)self evaluate];
      v9 = v13;
    }
  }
}

- (void)assertFact:(id)a3 grade:(double)a4
{
  v14 = a3;
  v6 = [(NSMapTable *)self->_gradeByFact objectForKey:?];
  [v6 doubleValue];
  v8 = v7;

  if (v8 + a4 <= 1.0)
  {
    v10 = v8 + a4;
  }

  else
  {
    v10 = 1.0;
  }

  if (self->_enableLogging)
  {
    v9 = [(NSMutableString *)self->_runLog appendFormat:@"asserted '%@' by +%.2f to %.2f\n", v14, *&a4, *&v10];
  }

  v11 = v14;
  if (v10 != v8)
  {
    gradeByFact = self->_gradeByFact;
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    [(NSMapTable *)gradeByFact setObject:v13 forKey:v14];

    v9 = [(NURuleSystem *)self evaluate];
    v11 = v14;
  }

  MEMORY[0x1EEE66BB8](v9, v11);
}

- (double)maximumGradeForFacts:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [(NSMapTable *)self->_gradeByFact objectForKey:*(*(&v14 + 1) + 8 * i)];
        [v10 doubleValue];
        v12 = v11;

        if (v12 > v8)
        {
          v8 = v12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (double)minimumGradeForFacts:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = 1.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [(NSMapTable *)self->_gradeByFact objectForKey:*(*(&v14 + 1) + 8 * i)];
        [v10 doubleValue];
        v12 = v11;

        if (v12 < v8)
        {
          v8 = v12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1.0;
  }

  return v8;
}

- (double)gradeForFact:(id)a3
{
  v3 = [(NSMapTable *)self->_gradeByFact objectForKey:a3];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)removeAllRules
{
  [(NSMutableArray *)self->_rules removeAllObjects];
  [(NSMutableArray *)self->_agenda removeAllObjects];
  executed = self->_executed;

  [(NSMutableArray *)executed removeAllObjects];
}

- (void)addRulesFromArray:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSMutableArray *)self->_rules addObjectsFromArray:v4];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NURuleSystem *)self _addRuleToAgenda:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addRule:(id)a3
{
  rules = self->_rules;
  v5 = a3;
  [(NSMutableArray *)rules addObject:v5];
  [(NURuleSystem *)self _addRuleToAgenda:v5];
}

- (void)_addRuleToAgenda:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_agenda;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = [*(*(&v13 + 1) + 8 * v10) salience];
        if (v12 < [v4 salience])
        {
          v8 = v11;
          goto LABEL_12;
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_12:

  [(NSMutableArray *)self->_agenda insertObject:v4 atIndex:v8];
}

- (void)setStateObject:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (self->_enableLogging)
  {
    v7 = [(NSMutableDictionary *)self->_state valueForKey:v6];
    runLog = self->_runLog;
    if (v7)
    {
      [(NSMutableString *)runLog appendFormat:@"replacing state for key '%@' of value '%@' to new value '%@'\n", v6, v7, v10];
    }

    else
    {
      [(NSMutableString *)runLog appendFormat:@"setting state for key '%@' to value '%@'\n", v6, v10, v9];
    }
  }

  [(NSMutableDictionary *)self->_state setObject:v10 forKey:v6];
}

- (void)resetAndEvaluateWithInitialState:(id)a3
{
  v4 = a3;
  [(NURuleSystem *)self reset];
  [(NSMutableDictionary *)self->_state setDictionary:v4];

  [(NURuleSystem *)self evaluate];
}

- (void)evaluate
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_agenda;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    while (2)
    {
      v6 = *v11;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if ([v8 evaluatePredicateWithSystem:self])
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          goto LABEL_16;
        }
      }

      v9 = v8;

      if (v9)
      {
        [(NSMutableArray *)self->_agenda removeObject:v9];
        [(NSMutableArray *)self->_executed addObject:v9];
        if (self->_enableLogging)
        {
          [(NSMutableString *)self->_runLog appendFormat:@"predicate fired for rule #%d, performing action\n", [(NSMutableArray *)self->_rules indexOfObject:v9]];
        }

        [v9 performActionWithSystem:self];
      }

      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v3 = self->_agenda;
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

- (void)encodeWithCoder:(id)a3
{
  constants = self->_constants;
  v6 = a3;
  [v6 encodeObject:constants forKey:@"constants"];
  [v6 encodeObject:self->_state forKey:@"state"];
  [v6 encodeObject:self->_rules forKey:@"rules"];
  [v6 encodeObject:self->_agenda forKey:@"agenda"];
  [v6 encodeObject:self->_executed forKey:@"executed"];
  v5 = [(NSMapTable *)self->_gradeByFact dictionaryRepresentation];
  [v6 encodeObject:v5 forKey:@"facts"];

  [v6 encodeObject:self->_runLog forKey:@"runlog"];
}

- (NURuleSystem)initWithCoder:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NURuleSystem *)self init];
  if (NUIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&NUIsAppleInternal_onceToken, &__block_literal_global_18);
  }

  if (NUIsAppleInternal_isAppleInternal)
  {
    if (v5)
    {
      v6 = MEMORY[0x1E695DFD8];
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = [v6 setWithObjects:{v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
      v14 = [v4 decodeObjectOfClasses:v13 forKey:@"constants"];
      if (v14)
      {
        [(NSMutableDictionary *)v5->_constants setDictionary:v14];
      }

      v43 = v14;
      v15 = MEMORY[0x1E695DFA8];
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v18 = objc_opt_class();
      v19 = objc_opt_class();
      v20 = objc_opt_class();
      v21 = [v15 setWithObjects:{v16, v17, v18, v19, v20, objc_opt_class(), 0}];
      v22 = NSClassFromString(&cfstr_Pireframesubje.isa);
      if (v22)
      {
        [v21 addObject:v22];
      }

      v23 = [v4 decodeObjectOfClasses:v21 forKey:@"state"];
      if (v23)
      {
        [(NSMutableDictionary *)v5->_state setDictionary:v23];
      }

      v24 = [v4 decodeObjectOfClasses:v13 forKey:@"rules"];
      if (v24)
      {
        [(NSMutableArray *)v5->_rules setArray:v24];
      }

      v25 = [v4 decodeObjectOfClasses:v13 forKey:@"agenda"];
      if (v25)
      {
        [(NSMutableArray *)v5->_agenda setArray:v25];
      }

      v26 = [v4 decodeObjectOfClasses:v13 forKey:@"executed"];
      if (v26)
      {
        [(NSMutableArray *)v5->_executed setArray:v26];
      }

      v27 = [v4 decodeObjectOfClasses:v13 forKey:@"facts"];
      v28 = v27;
      if (v27)
      {
        v38 = v26;
        v39 = v25;
        v40 = v24;
        v41 = v23;
        v42 = v21;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v29 = [v27 allKeys];
        v30 = [v29 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v45;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v45 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v44 + 1) + 8 * i);
              v35 = [v28 objectForKeyedSubscript:v34];
              [(NSMapTable *)v5->_gradeByFact setObject:v35 forKey:v34];
            }

            v31 = [v29 countByEnumeratingWithState:&v44 objects:v48 count:16];
          }

          while (v31);
        }

        v23 = v41;
        v21 = v42;
        v25 = v39;
        v24 = v40;
        v26 = v38;
      }

      v36 = [v4 decodeObjectOfClasses:v13 forKey:@"runlog"];
      if (v36)
      {
        [(NSMutableString *)v5->_runLog setString:v36];
      }
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4B8] format:@"Decoding NURuleSystem is not supported"];
  }

  return v5;
}

- (NURuleSystem)init
{
  v18.receiver = self;
  v18.super_class = NURuleSystem;
  v2 = [(NURuleSystem *)&v18 init];
  if (v2)
  {
    v3 = objc_opt_new();
    state = v2->_state;
    v2->_state = v3;

    v5 = objc_opt_new();
    constants = v2->_constants;
    v2->_constants = v5;

    v7 = objc_opt_new();
    rules = v2->_rules;
    v2->_rules = v7;

    v9 = objc_opt_new();
    agenda = v2->_agenda;
    v2->_agenda = v9;

    v11 = objc_opt_new();
    executed = v2->_executed;
    v2->_executed = v11;

    v13 = objc_opt_new();
    gradeByFact = v2->_gradeByFact;
    v2->_gradeByFact = v13;

    v15 = objc_opt_new();
    runLog = v2->_runLog;
    v2->_runLog = v15;
  }

  return v2;
}

@end