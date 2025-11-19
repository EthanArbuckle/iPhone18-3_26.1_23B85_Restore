@interface _DPSemanticVersion
- (BOOL)isBackwardCompatibleWithVersion:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_DPSemanticVersion)initWithMajorVersion:(unint64_t)a3 minorVersion:(unint64_t)a4 patchVersion:(unint64_t)a5;
- (_DPSemanticVersion)initWithString:(id)a3 error:(id *)a4;
@end

@implementation _DPSemanticVersion

- (_DPSemanticVersion)initWithString:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$" options:0 error:a4];
  if (v7)
  {
    v8 = [v7 matchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];
    if ([v8 count])
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      if ([v9 numberOfRanges] >= 6 && objc_msgSend(v9, "rangeAtIndex:", 1) != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v9, "rangeAtIndex:", 2) != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v9, "rangeAtIndex:", 3) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = [v9 rangeAtIndex:1];
        v20 = [v6 substringWithRange:{v18, v19}];
        v21 = [v9 rangeAtIndex:2];
        v23 = [v6 substringWithRange:{v21, v22}];
        v24 = [v9 rangeAtIndex:3];
        v26 = [v6 substringWithRange:{v24, v25}];
        self = -[_DPSemanticVersion initWithMajorVersion:minorVersion:patchVersion:](self, "initWithMajorVersion:minorVersion:patchVersion:", [v20 integerValue], objc_msgSend(v23, "integerValue"), objc_msgSend(v26, "integerValue"));

        v13 = self;
        goto LABEL_18;
      }

      v10 = _DPSemanticVersionError(@"Version string is not a valid semantic version string. It should specify at least <major>.<minor>.<patch>.");
      v11 = +[_DPLog framework];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [_DPSemanticVersion initWithString:v10 error:v11];
      }

      if (a4)
      {
        v12 = v10;
        *a4 = v10;
      }
    }

    else
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to parse semantic version from '%@'.", v6];
      v9 = _DPSemanticVersionError(v14);

      v15 = +[_DPLog framework];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [_DPSemanticVersion initWithString:v9 error:v15];
      }

      if (a4)
      {
        v16 = v9;
        v13 = 0;
        *a4 = v9;
        goto LABEL_18;
      }
    }

    v13 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v13 = 0;
LABEL_19:

  return v13;
}

- (_DPSemanticVersion)initWithMajorVersion:(unint64_t)a3 minorVersion:(unint64_t)a4 patchVersion:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = _DPSemanticVersion;
  result = [(_DPSemanticVersion *)&v9 init];
  if (result)
  {
    result->_majorVersion = a3;
    result->_minorVersion = a4;
    result->_patchVersion = a5;
  }

  return result;
}

- (BOOL)isBackwardCompatibleWithVersion:(id)a3
{
  v4 = a3;
  v5 = [(_DPSemanticVersion *)self majorVersion];
  if (v5 != [v4 majorVersion])
  {
    goto LABEL_9;
  }

  v6 = [(_DPSemanticVersion *)self majorVersion];
  v7 = [(_DPSemanticVersion *)self minorVersion];
  v8 = [v4 minorVersion];
  if (!v6)
  {
    if (v7 == v8)
    {
      v10 = [(_DPSemanticVersion *)self patchVersion];
      v9 = v10 == [v4 patchVersion];
      goto LABEL_10;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (v7 <= v8)
  {
    v11 = [(_DPSemanticVersion *)self minorVersion];
    if (v11 == [v4 minorVersion])
    {
      v12 = [(_DPSemanticVersion *)self patchVersion];
      v9 = v12 >= [v4 patchVersion];
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = 1;
LABEL_10:

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(_DPSemanticVersion *)self majorVersion];
    if (v6 == [v5 majorVersion] && (v7 = -[_DPSemanticVersion minorVersion](self, "minorVersion"), v7 == objc_msgSend(v5, "minorVersion")))
    {
      v8 = [(_DPSemanticVersion *)self patchVersion];
      v9 = v8 == [v5 patchVersion];
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