@interface NSError(MSVDependencyError)
+ (id)MSVErrorWithMissingDependencies:()MSVDependencyError;
+ (id)MSVErrorWithMissingDependency:()MSVDependencyError;
@end

@implementation NSError(MSVDependencyError)

+ (id)MSVErrorWithMissingDependencies:()MSVDependencyError
{
  v5 = a3;
  if (![v5 count])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"NSError+MSVAdditions.m" lineNumber:333 description:@"Array of dependencies is empty."];
  }

  v6 = MEMORY[0x1E696ABC0];
  v7 = [v5 componentsJoinedByString:{@", "}];
  v8 = [v5 count];

  v9 = @"are";
  if (v8 == 1)
  {
    v9 = @"is";
  }

  v10 = [v6 msv_errorWithDomain:@"MSVError" code:1 debugDescription:{@"%@ %@ required to use this functionality.", v7, v9}];

  return v10;
}

+ (id)MSVErrorWithMissingDependency:()MSVDependencyError
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v10 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];
  v7 = [v3 MSVErrorWithMissingDependencies:{v6, v10, v11}];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end