@interface _UIDebugLogReportFormatter
- (id)_componentsFromReport:(id)a3;
- (id)stringFromReport:(id)a3;
@end

@implementation _UIDebugLogReportFormatter

- (id)_componentsFromReport:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = [v3 _statements];
  v6 = [v5 count];

  v7 = [v3 _statements];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52___UIDebugLogReportFormatter__componentsFromReport___block_invoke;
  v12[3] = &unk_279014930;
  v13 = v3;
  v14 = v4;
  v15 = v6;
  v8 = v4;
  v9 = v3;
  [v7 enumerateObjectsUsingBlock:v12];

  v10 = objc_alloc_init(_UIDebugReportComponents);
  [(_UIDebugReportComponents *)v10 setBody:v8];

  return v10;
}

- (id)stringFromReport:(id)a3
{
  v4 = [(_UIDebugLogReportFormatter *)self _componentsFromReport:a3];
  v5 = [(_UIDebugReportFormatter *)self stringFromReportComponents:v4];

  return v5;
}

@end