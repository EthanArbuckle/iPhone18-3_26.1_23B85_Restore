@interface SKRaptorQEncoderSummary
+ (id)encoderSummaryFromFile:(id)a3;
- (SKRaptorQEncoderSummary)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKRaptorQEncoderSummary

+ (id)encoderSummaryFromFile:(id)a3
{
  v3 = a3;
  v11 = 0;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v3 options:1 error:&v11];
  v5 = v11;
  if (!v4 || (v10 = v5, [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v10], v6 = objc_claimAutoreleasedReturnValue(), v7 = v10, v5, v5 = v7, !v6))
  {
    if (MIBUOnceToken != -1)
    {
      +[SKRaptorQEncoderSummary encoderSummaryFromFile:];
    }

    v9 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [(SKRaptorQEncoderSummary *)v3 encoderSummaryFromFile:v5, v9];
    }

    v6 = 0;
  }

  return v6;
}

void __50__SKRaptorQEncoderSummary_encoderSummaryFromFile___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __85__MIBUNWConnection_initWithConfiguration_messageFramer_dispatchQueue_statusDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SKRaptorQEncoderSummary *)self rqEncodedFileURLs];
  [v4 encodeObject:v5 forKey:@"EncodedFileURLs"];

  v6 = [(SKRaptorQEncoderSummary *)self rqSourceSymbolCounts];
  [v4 encodeObject:v6 forKey:@"SourceSymbolCounts"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKRaptorQEncoderSummary rqBasicParameters](self, "rqBasicParameters")}];
  [v4 encodeObject:v7 forKey:@"BasicParameters"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SKRaptorQEncoderSummary rqExtendedParameters](self, "rqExtendedParameters")}];
  [v4 encodeObject:v8 forKey:@"ExtendedParameters"];
}

- (SKRaptorQEncoderSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SKRaptorQEncoderSummary;
  v5 = [(SKRaptorQEncoderSummary *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"EncodedFileURLs"];
    [(SKRaptorQEncoderSummary *)v5 setRqEncodedFileURLs:v9];

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"SourceSymbolCounts"];
    [(SKRaptorQEncoderSummary *)v5 setRqSourceSymbolCounts:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BasicParameters"];
    -[SKRaptorQEncoderSummary setRqBasicParameters:](v5, "setRqBasicParameters:", [v14 unsignedLongValue]);

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ExtendedParameters"];
    -[SKRaptorQEncoderSummary setRqExtendedParameters:](v5, "setRqExtendedParameters:", [v15 unsignedIntValue]);
  }

  return v5;
}

+ (void)encoderSummaryFromFile:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_259B04000, log, OS_LOG_TYPE_ERROR, "Failed to load encoder summary from file: %@ error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end