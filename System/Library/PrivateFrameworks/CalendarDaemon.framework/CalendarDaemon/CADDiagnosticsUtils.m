@interface CADDiagnosticsUtils
+ (BOOL)compressFileAt:(id)a3 to:(id)a4 context:(id)a5;
@end

@implementation CADDiagnosticsUtils

+ (BOOL)compressFileAt:(id)a3 to:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 path];
  v11 = fopen([v10 fileSystemRepresentation], "r");

  if (v11)
  {
    v12 = [v8 path];
    v13 = fopen([v12 fileSystemRepresentation], "w");

    if (v13)
    {
      v14 = CPFileCompressionZDeflate();
      if (v14)
      {
        [v9 logError:{@"Compressing file failed: %i", v14}];
      }

      fclose(v11);
      fclose(v13);
      LOBYTE(v11) = 1;
    }

    else
    {
      [v9 logError:{@"Failed to open output file %@: %d", v8, *__error()}];
      fclose(v11);
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    [v9 logError:{@"Failed to open input file %@: %d", v7, *__error()}];
  }

  return v11;
}

@end