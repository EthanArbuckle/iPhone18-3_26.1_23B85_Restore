@interface FAUICreatePDFFromDocumentURLs
@end

@implementation FAUICreatePDFFromDocumentURLs

void ___FAUICreatePDFFromDocumentURLs_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUIInitLogging();
      v5 = fauiLogHandle;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ___FAUICreatePDFFromDocumentURLs_block_invoke_cold_1(a1, (a1 + 32));
    }

    goto LABEL_20;
  }

  v6 = [v3 startAccessingSecurityScopedResource];
  v15 = 0;
  v7 = *MEMORY[0x277CBE918];
  v14 = 0;
  v8 = [v4 getResourceValue:&v15 forKey:v7 error:&v14];
  v9 = v15;
  v10 = v14;
  if (!v8)
  {
    v12 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUIInitLogging();
      v12 = fauiLogHandle;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      ___FAUICreatePDFFromDocumentURLs_block_invoke_cold_2();
    }

    goto LABEL_17;
  }

  if (UTTypeConformsTo(v9, *MEMORY[0x277CC20B0]))
  {
    v11 = _AppendImageToDocument(v4, *(a1 + 48));
    if (v11)
    {
      [*(a1 + 56) addObject:v11];
    }
  }

  else
  {
    if (!UTTypeConformsTo(v9, *MEMORY[0x277CC2108]))
    {
      v13 = fauiLogHandle;
      if (!fauiLogHandle)
      {
        FAUIInitLogging();
        v13 = fauiLogHandle;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        ___FAUICreatePDFFromDocumentURLs_block_invoke_cold_3();
      }

      goto LABEL_17;
    }

    v11 = [objc_alloc(getPDFDocumentClass()) initWithURL:v4];
    _AppendDocumentToDocument(v11, *(a1 + 48));
  }

LABEL_17:
  if (v6)
  {
    [v4 stopAccessingSecurityScopedResource];
  }

LABEL_20:
}

uint64_t ___FAUICreatePDFFromDocumentURLs_block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void ___FAUICreatePDFFromDocumentURLs_block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  LODWORD(v7) = 138412546;
  *(&v7 + 4) = *(a1 + 40);
  OUTLINED_FUNCTION_3();
  *v8 = v3;
  OUTLINED_FUNCTION_2(&dword_24ABD1000, v4, v5, "Failed to take a coordinated read on url: %@ error: %@", v7, DWORD2(v7), *&v8[2], v9);
  v6 = *MEMORY[0x277D85DE8];
}

void ___FAUICreatePDFFromDocumentURLs_block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_24ABD1000, v0, v1, "Error: Unable to determine UTI for file: %@ error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void ___FAUICreatePDFFromDocumentURLs_block_invoke_cold_3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_24ABD1000, v0, v1, "Error: Unexpected UTI: %@ for file: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end