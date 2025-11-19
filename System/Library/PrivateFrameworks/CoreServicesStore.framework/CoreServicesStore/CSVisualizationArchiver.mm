@interface CSVisualizationArchiver
@end

@implementation CSVisualizationArchiver

uint64_t __51___CSVisualizationArchiver_writeAllUnitsWithBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  result = [*(a1 + 32) writeAllUnitsInTable:a2 block:*(a1 + 40)];
  v9 = atomic_load((*(a1 + 32) + 18));
  if (v9)
  {
    *a6 = 1;
  }

  return result;
}

void __55___CSVisualizationArchiver_writeAllUnitsInTable_block___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  if (v5 >= v4)
  {
    v7 = *v3;
    v8 = v5 - *v3;
    v9 = v8 >> 2;
    v10 = (v8 >> 2) + 1;
    if (v10 >> 62)
    {
      std::vector<unsigned int>::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:nn200100](v12);
    }

    *(4 * v9) = a2;
    v6 = 4 * v9 + 4;
    memcpy(0, v7, v8);
    v13 = *v3;
    *v3 = 0;
    *(v3 + 8) = v6;
    *(v3 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  *(v3 + 8) = v6;
}

uint64_t __55___CSVisualizationArchiver_writeAllUnitsInTable_block___block_invoke_83(uint64_t result, uint64_t a2)
{
  v2 = atomic_load(*(result + 32));
  if ((v2 & 1) == 0)
  {
    v3 = result;
    v4 = *(**(result + 40) + 4 * a2);
    [**(result + 48) writeUnit:v4 inTable:**(v3 + 56) state:*(v3 + 64)];
    result = **(v3 + 72);
    if (result)
    {
      v6 = 0;
      result = (*(result + 16))(result, **(v3 + 56), v4, &v6);
      if (v6 == 1)
      {
        atomic_store(1u, *(v3 + 32));
      }
    }

    v5 = atomic_load((**(v3 + 48) + 18));
    if (v5)
    {
      atomic_store(1u, *(v3 + 32));
    }
  }

  return result;
}

id __55___CSVisualizationArchiver_getWriteUnitState_forTable___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  if (!v8 || ((*(v8 + 16))(v8, v7, a3, a4), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [v7 summaryOfUnit:a4 inTable:a3];
  }

  return v9;
}

id __55___CSVisualizationArchiver_getWriteUnitState_forTable___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  if (!v8 || ((*(v8 + 16))(v8, v7, a3, a4), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [v7 descriptionOfUnit:a4 inTable:a3];
  }

  return v9;
}

void __141___CSVisualizationArchiver_CSRemoteVisualization__beginProvidingVisualizationArchivesWithMachServiceName_queue_creatingVisualizersWithBlock___block_invoke(uint64_t a1, const void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = CSStore2::GetLog(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v15 = 138543874;
    *v16 = v7;
    *&v16[8] = 2048;
    *&v16[10] = a2;
    v17 = 2112;
    v18 = a3;
    _os_log_impl(&dword_1B9D5B000, v6, OS_LOG_TYPE_DEFAULT, "Received request for service %{public}@ from connection %p: %@", &v15, 0x20u);
  }

  v8 = os_transaction_create();
  v9 = funopen(a2, CSStore2::readFromLockdownConnection, CSStore2::writeToLockdownConnection, 0, 0);
  if (v9)
  {
    [*(a1 + 48) processCommandFromConnection:a2 fileHandle:v9 providerBlock:*(a1 + 40)];
    fclose(v9);
  }

  else
  {
    v10 = CSStore2::GetLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *__error();
      v13 = __error();
      v14 = strerror(*v13);
      v15 = 67109378;
      *v16 = v12;
      *&v16[4] = 2080;
      *&v16[6] = v14;
      _os_log_error_impl(&dword_1B9D5B000, v10, OS_LOG_TYPE_ERROR, "Failed to open file handle for streaming visualization data: %i (%s)", &v15, 0x12u);
    }
  }

  softLinklockdown_disconnect(a2);

  v11 = *MEMORY[0x1E69E9840];
}

void __106___CSVisualizationArchiver_CSRemoteVisualization__provideVisualizerToConnection_fileHandle_providerBlock___block_invoke(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = (*(a1[4] + 16))();
  if (v3)
  {
    v4 = [_CSVisualizationArchiver alloc];
    v5 = a1[6];
    v11 = 0;
    v6 = [(_CSVisualizationArchiver *)v4 initWithVisualizer:v3 fileHandle:v5 closeWhenDone:0 allowCompression:1 error:&v11];
    v7 = v11;
    v8 = v7;
    if (v6)
    {
      [(_CSVisualizationArchiver *)v6 writeAllUnitsWithBlock:0];
      [(_CSVisualizationArchiver *)v6 finishWriting];
    }

    else
    {
      v9 = CSStore2::GetLog(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v13 = v8;
        _os_log_error_impl(&dword_1B9D5B000, v9, OS_LOG_TYPE_ERROR, "Failed to create _CSVisualizationArchiver for streaming visualization data: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = CSStore2::GetLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B9D5B000, v8, OS_LOG_TYPE_INFO, "Callback block didn't vend a _CSVisualizer; no data will be returned to the Mac", buf, 2u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end