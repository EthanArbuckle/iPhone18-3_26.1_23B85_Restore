@interface CADDiagnosticsUtils
+ (BOOL)compressFileAt:(id)at to:(id)to context:(id)context;
@end

@implementation CADDiagnosticsUtils

+ (BOOL)compressFileAt:(id)at to:(id)to context:(id)context
{
  atCopy = at;
  toCopy = to;
  contextCopy = context;
  path = [atCopy path];
  v11 = fopen([path fileSystemRepresentation], "r");

  if (v11)
  {
    path2 = [toCopy path];
    v13 = fopen([path2 fileSystemRepresentation], "w");

    if (v13)
    {
      v14 = CPFileCompressionZDeflate();
      if (v14)
      {
        [contextCopy logError:{@"Compressing file failed: %i", v14}];
      }

      fclose(v11);
      fclose(v13);
      LOBYTE(v11) = 1;
    }

    else
    {
      [contextCopy logError:{@"Failed to open output file %@: %d", toCopy, *__error()}];
      fclose(v11);
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    [contextCopy logError:{@"Failed to open input file %@: %d", atCopy, *__error()}];
  }

  return v11;
}

@end