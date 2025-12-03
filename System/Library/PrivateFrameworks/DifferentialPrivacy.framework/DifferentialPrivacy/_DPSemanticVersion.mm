@interface _DPSemanticVersion
- (BOOL)isBackwardCompatibleWithVersion:(id)version;
- (BOOL)isEqual:(id)equal;
- (_DPSemanticVersion)initWithMajorVersion:(unint64_t)version minorVersion:(unint64_t)minorVersion patchVersion:(unint64_t)patchVersion;
- (_DPSemanticVersion)initWithString:(id)string error:(id *)error;
@end

@implementation _DPSemanticVersion

- (_DPSemanticVersion)initWithString:(id)string error:(id *)error
{
  stringCopy = string;
  v7 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$" options:0 error:error];
  if (v7)
  {
    v8 = [v7 matchesInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];
    if ([v8 count])
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      if ([v9 numberOfRanges] >= 6 && objc_msgSend(v9, "rangeAtIndex:", 1) != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v9, "rangeAtIndex:", 2) != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v9, "rangeAtIndex:", 3) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = [v9 rangeAtIndex:1];
        v20 = [stringCopy substringWithRange:{v18, v19}];
        v21 = [v9 rangeAtIndex:2];
        v23 = [stringCopy substringWithRange:{v21, v22}];
        v24 = [v9 rangeAtIndex:3];
        v26 = [stringCopy substringWithRange:{v24, v25}];
        self = -[_DPSemanticVersion initWithMajorVersion:minorVersion:patchVersion:](self, "initWithMajorVersion:minorVersion:patchVersion:", [v20 integerValue], objc_msgSend(v23, "integerValue"), objc_msgSend(v26, "integerValue"));

        selfCopy = self;
        goto LABEL_18;
      }

      v10 = _DPSemanticVersionError(@"Version string is not a valid semantic version string. It should specify at least <major>.<minor>.<patch>.");
      v11 = +[_DPLog framework];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [_DPSemanticVersion initWithString:v10 error:v11];
      }

      if (error)
      {
        v12 = v10;
        *error = v10;
      }
    }

    else
    {
      stringCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to parse semantic version from '%@'.", stringCopy];
      v9 = _DPSemanticVersionError(stringCopy);

      v15 = +[_DPLog framework];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [_DPSemanticVersion initWithString:v9 error:v15];
      }

      if (error)
      {
        v16 = v9;
        selfCopy = 0;
        *error = v9;
        goto LABEL_18;
      }
    }

    selfCopy = 0;
LABEL_18:

    goto LABEL_19;
  }

  selfCopy = 0;
LABEL_19:

  return selfCopy;
}

- (_DPSemanticVersion)initWithMajorVersion:(unint64_t)version minorVersion:(unint64_t)minorVersion patchVersion:(unint64_t)patchVersion
{
  v9.receiver = self;
  v9.super_class = _DPSemanticVersion;
  result = [(_DPSemanticVersion *)&v9 init];
  if (result)
  {
    result->_majorVersion = version;
    result->_minorVersion = minorVersion;
    result->_patchVersion = patchVersion;
  }

  return result;
}

- (BOOL)isBackwardCompatibleWithVersion:(id)version
{
  versionCopy = version;
  majorVersion = [(_DPSemanticVersion *)self majorVersion];
  if (majorVersion != [versionCopy majorVersion])
  {
    goto LABEL_9;
  }

  majorVersion2 = [(_DPSemanticVersion *)self majorVersion];
  minorVersion = [(_DPSemanticVersion *)self minorVersion];
  minorVersion2 = [versionCopy minorVersion];
  if (!majorVersion2)
  {
    if (minorVersion == minorVersion2)
    {
      patchVersion = [(_DPSemanticVersion *)self patchVersion];
      v9 = patchVersion == [versionCopy patchVersion];
      goto LABEL_10;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (minorVersion <= minorVersion2)
  {
    minorVersion3 = [(_DPSemanticVersion *)self minorVersion];
    if (minorVersion3 == [versionCopy minorVersion])
    {
      patchVersion2 = [(_DPSemanticVersion *)self patchVersion];
      v9 = patchVersion2 >= [versionCopy patchVersion];
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = 1;
LABEL_10:

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    majorVersion = [(_DPSemanticVersion *)self majorVersion];
    if (majorVersion == [v5 majorVersion] && (v7 = -[_DPSemanticVersion minorVersion](self, "minorVersion"), v7 == objc_msgSend(v5, "minorVersion")))
    {
      patchVersion = [(_DPSemanticVersion *)self patchVersion];
      v9 = patchVersion == [v5 patchVersion];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)initWithString:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22622D000, a2, OS_LOG_TYPE_ERROR, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end