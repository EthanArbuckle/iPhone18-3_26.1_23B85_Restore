@interface NWSRouteSnapshotter
- (NWSRouteSnapshotter)initWithSource:(id)a3 dest:(id)a4 mask:(id)a5 ifindex:(int)a6;
- (id)snapshot;
- (void)snapshot;
@end

@implementation NWSRouteSnapshotter

- (id)snapshot
{
  v21 = *MEMORY[0x277D85DE8];
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  memset(&v18[1], 0, 128);
  v15 = 0;
  v16 = 0;
  v17 = 1007;
  v18[0] = [(NWSSnapshotter *)self kernelSourceRef];
  v3 = [(NWSSnapshotter *)self snapshotSource];
  v4 = [v3 send:&v16 length:24 err:&v15];

  if (v4 != 24)
  {
    v9 = NStatGetLog();
    v7 = v9;
    if (v4 < 0)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(NWSRouteSnapshotter *)&v15 snapshot];
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [NWSRouteSnapshotter snapshot];
    }

    goto LABEL_21;
  }

  v5 = [(NWSSnapshotter *)self snapshotSource];
  v6 = [v5 recv:&v16 length:272 err:&v15];

  if (v6 <= 271)
  {
    v7 = NStatGetLog();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v6 < 0)
    {
      if (v8)
      {
        [(NWSRouteSnapshotter *)&v15 snapshot];
      }
    }

    else if (v8)
    {
      [NWSRouteSnapshotter snapshot];
    }

LABEL_21:

    goto LABEL_22;
  }

  if (v17 != 10006)
  {
    if (v17 == 2)
    {
      v7 = NStatGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(NWSRouteSnapshotter *)v7 snapshot];
      }
    }

    else
    {
      v7 = NStatGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(NWSRouteSnapshotter *)&v17 snapshot];
      }
    }

    goto LABEL_21;
  }

  v10 = v18[0];
  if (v10 == [(NWSSnapshotter *)self kernelSourceRef])
  {
    v11 = [[NWSRouteSnapshot alloc] initWithCounts:&v18[2] routeDescriptor:v19 sourceIdent:[(NWSSnapshotter *)self kernelSourceRef] seqno:0];
    goto LABEL_23;
  }

  v14 = NStatGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(NWSRouteSnapshotter *)v18 snapshot];
  }

LABEL_22:
  v11 = 0;
LABEL_23:
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NWSRouteSnapshotter)initWithSource:(id)a3 dest:(id)a4 mask:(id)a5 ifindex:(int)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v27.receiver = self;
  v27.super_class = NWSRouteSnapshotter;
  v13 = [(NWSRouteSnapshotter *)&v27 init];
  if (!v13)
  {
    goto LABEL_34;
  }

  v29 = 0;
  memset(v28, 0, sizeof(v28));
  if (v11 && [v11 length] >= 0x10 && objc_msgSend(v11, "length") < 0x1D)
  {
    if (v12 && ([v11 length] < 0x10 || objc_msgSend(v11, "length") >= 0x1D))
    {
      v14 = NStatGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [NWSRouteSnapshotter initWithSource:v12 dest:? mask:? ifindex:?];
      }

      goto LABEL_7;
    }

    *&v28[0] = v28;
    *(&v28[0] + 1) = 1001;
    *&v28[1] = 1;
    memset(&v28[1] + 8, 0, 56);
    LODWORD(v29) = a6;
    [v11 getBytes:&v28[1] + 8 length:28];
    if (v12)
    {
      [v12 getBytes:&v28[3] + 4 length:28];
    }

    v26 = 0;
    v16 = [v10 send:v28 length:84 err:&v26];
    if (v16 != 84)
    {
      v20 = v16;
      v21 = NStatGetLog();
      v14 = v21;
      if (v20 < 0)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [(NWSRouteSnapshotter *)&v26 snapshot];
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [NWSRouteSnapshotter initWithSource:dest:mask:ifindex:];
      }

      goto LABEL_7;
    }

    v17 = [v10 recv:v28 length:88 err:&v26];
    if (v17 <= 31)
    {
      v18 = v17;
      v14 = NStatGetLog();
      v19 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      if (v18 < 0)
      {
        if (v19)
        {
          [NWSRouteSnapshotter initWithSource:? dest:? mask:? ifindex:?];
        }
      }

      else if (v19)
      {
        [NWSRouteSnapshotter initWithSource:dest:mask:ifindex:];
      }

      goto LABEL_7;
    }

    if (DWORD2(v28[0]) != 10001)
    {
      if (DWORD2(v28[0]) == 1)
      {
        v22 = v28[1];
        v14 = NStatGetLog();
        v23 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
        if (v22 == 2)
        {
          if (v23)
          {
            [NWSRouteSnapshotter initWithSource:dest:mask:ifindex:];
          }
        }

        else if (v23)
        {
          [NWSRouteSnapshotter initWithSource:dest:mask:ifindex:];
        }
      }

      else
      {
        v14 = NStatGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [NWSRouteSnapshotter initWithSource:? dest:? mask:? ifindex:?];
        }
      }

      goto LABEL_7;
    }

    if (*&v28[0] != v28)
    {
      v14 = NStatGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [NWSRouteSnapshotter initWithSource:v28 dest:v28 mask:v14 ifindex:?];
      }

      goto LABEL_7;
    }

    [(NWSSnapshotter *)v13 setKernelSourceRef:*&v28[1]];
    [(NWSSnapshotter *)v13 setSnapshotSource:v10];
LABEL_34:
    v15 = v13;
    goto LABEL_35;
  }

  v14 = NStatGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [NWSRouteSnapshotter initWithSource:v11 dest:v11 == 0 mask:? ifindex:?];
  }

LABEL_7:

  v15 = 0;
LABEL_35:

  v24 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)snapshot
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithSource:(void *)a1 dest:mask:ifindex:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 length];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithSource:dest:mask:ifindex:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 84;
  _os_log_debug_impl(&dword_25BA3A000, v0, OS_LOG_TYPE_DEBUG, "sent %ld out of %lu", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)initWithSource:dest:mask:ifindex:.cold.4()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithSource:(os_log_t)log dest:mask:ifindex:.cold.6(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 134218240;
  v6 = v3;
  v7 = 2048;
  v8 = a2;
  _os_log_error_impl(&dword_25BA3A000, log, OS_LOG_TYPE_ERROR, "received wrong context, received %llu expected %lu", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)initWithSource:(unsigned int *)a1 dest:mask:ifindex:.cold.7(unsigned int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithSource:dest:mask:ifindex:.cold.8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithSource:(unsigned int *)a1 dest:mask:ifindex:.cold.9(unsigned int *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithSource:(void *)a1 dest:(char)a2 mask:ifindex:.cold.10(void *a1, char a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    [a1 length];
  }

  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

@end