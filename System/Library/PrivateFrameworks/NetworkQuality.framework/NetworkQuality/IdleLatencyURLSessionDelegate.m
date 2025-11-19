@interface IdleLatencyURLSessionDelegate
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)executeTaskWithRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation IdleLatencyURLSessionDelegate

- (void)executeTaskWithRequest:(id)a3 completionHandler:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = MEMORY[0x25F873620](a4);
  completionHandler = self->super._completionHandler;
  self->super._completionHandler = v8;

  objc_storeStrong(&self->super._request, a3);
  if (self->super._parallel)
  {
    v11 = 0;
    *&v10 = 136315906;
    v17 = v10;
    do
    {
      v12 = [(NetworkQualityExecutions *)self->super._execution createDefaultNSURLSessionConfiguration];
      v13 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v12 delegate:self delegateQueue:self->super._queue];
      [(NSMutableArray *)self->super._sessions addObject:v13];
      v14 = [v13 dataTaskWithRequest:v7];
      [v14 set_hostOverride:self->super._testEndpoint];
      [(NSMutableArray *)self->super._tasks addObject:v14];
      netqual_log_init();
      v15 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v17;
        v19 = "[IdleLatencyURLSessionDelegate executeTaskWithRequest:completionHandler:]";
        v20 = 1024;
        v21 = 325;
        v22 = 2112;
        v23 = v14;
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&dword_25B962000, v15, OS_LOG_TYPE_DEFAULT, "%s:%u - Created IdleLatencyTask %@ on session %@", buf, 0x26u);
      }

      [v14 resume];

      ++v11;
    }

    while (v11 < self->super._parallel);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v10)
  {
    p_tasks = &self->super._tasks;
    [(NSMutableArray *)self->super._tasks removeObject:v9];
    goto LABEL_7;
  }

  v12 = [v10 domain];
  if ([v12 isEqualToString:*MEMORY[0x277CCA738]])
  {
    v13 = [v11 code] == -999;
  }

  else
  {
    v13 = 0;
  }

  p_tasks = &self->super._tasks;
  [(NSMutableArray *)self->super._tasks removeObject:v9];
  if (v13)
  {
LABEL_7:
    if (![(NSMutableArray *)*p_tasks count]&& !self->super._canceled)
    {
      error = self->super._error;
      completionHandler = self->super._completionHandler;
LABEL_14:
      completionHandler[2](completionHandler, error);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  netqual_log_init();
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    [IdleLatencyURLSessionDelegate URLSession:task:didCompleteWithError:];
  }

  if (!self->super._canceled)
  {
    objc_storeStrong(&self->super._error, a5);
    completionHandler = self->super._completionHandler;
    error = self->super._error;
    goto LABEL_14;
  }

LABEL_15:
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(LatencyURLSessionDelegate *)self didFinishCollectingMetrics:v10 task:v9];
  if (v11 < 0)
  {
    goto LABEL_59;
  }

  v12 = v11;
  v13 = [(NetworkQualityExecutionsResult *)self->super._results idleLatencyResults];
  v14 = [v13 valueForKey:self->super._tcpKey];

  if (!v14)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = [(NetworkQualityExecutionsResult *)self->super._results idleLatencyResults];
    [v15 setObject:v14 forKey:self->super._tcpKey];
  }

  v16 = [(NetworkQualityExecutionsResult *)self->super._results idleLatencyResults];
  v17 = [v16 valueForKey:self->super._tlsKey];

  if (!v17)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = [(NetworkQualityExecutionsResult *)self->super._results idleLatencyResults];
    [v18 setObject:v17 forKey:self->super._tlsKey];
  }

  v19 = [(NetworkQualityExecutionsResult *)self->super._results idleLatencyResults];
  v20 = [v19 valueForKey:self->super._reqrespKey];

  v112 = v20;
  if (!v20)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v22 = [(NetworkQualityExecutionsResult *)self->super._results idleLatencyResults];
    v112 = v21;
    [v22 setObject:v21 forKey:self->super._reqrespKey];
  }

  v23 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
  v24 = [v23 valueForKey:@"ecn_values"];

  v110 = v24;
  if (!v24)
  {
    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v26 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
    v110 = v25;
    [v26 setObject:v25 forKey:@"ecn_values"];
  }

  v27 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
  v28 = [v27 valueForKey:@"l4s_enablement"];

  v109 = v28;
  if (!v28)
  {
    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v30 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
    v109 = v29;
    [v30 setObject:v29 forKey:@"l4s_enablement"];
  }

  v31 = [v10 transactionMetrics];
  v32 = [v31 objectAtIndex:v12];

  report = [v32 _establishmentReport];
  if (report)
  {
    v133 = 0;
    v134 = &v133;
    v135 = 0x3032000000;
    v136 = __Block_byref_object_copy__0;
    v137 = __Block_byref_object_dispose__0;
    v138 = 0;
    v129 = 0;
    v130 = &v129;
    v131 = 0x2020000000;
    v132 = 0;
    v125 = 0;
    v126 = &v125;
    v127 = 0x2020000000;
    v128 = 0;
    v121 = 0;
    v122 = &v121;
    v123 = 0x2020000000;
    v124 = 0;
    enumerate_block[0] = MEMORY[0x277D85DD0];
    enumerate_block[1] = 3221225472;
    enumerate_block[2] = __76__IdleLatencyURLSessionDelegate_URLSession_task_didFinishCollectingMetrics___block_invoke;
    enumerate_block[3] = &unk_2799695D8;
    v117 = &v133;
    v118 = &v129;
    v116 = v10;
    v119 = &v125;
    v120 = &v121;
    nw_establishment_report_enumerate_protocols(report, enumerate_block);
    if (*(v126 + 24) == 1)
    {
      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v122[3]];
      [v14 addObject:v33];
    }

    v34 = v134[5];
    if (!v34)
    {
      goto LABEL_20;
    }

    v35 = MEMORY[0x25F873380]();
    if (MEMORY[0x25F873390](v34, v35))
    {
    }

    else
    {
      v36 = v134[5];
      v37 = nw_protocol_copy_quic_connection_definition();
      LODWORD(v36) = MEMORY[0x25F873390](v36, v37);

      if (!v36)
      {
LABEL_20:
        v113 = v110;
        v114 = v109;
        nw_establishment_report_enumerate_protocol_l4s_state();

        _Block_object_dispose(&v121, 8);
        _Block_object_dispose(&v125, 8);
        _Block_object_dispose(&v129, 8);
        _Block_object_dispose(&v133, 8);

        goto LABEL_21;
      }
    }

    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v130[3]];
    [v17 addObject:v38];

    goto LABEL_20;
  }

LABEL_21:
  v108 = v10;
  v39 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
  v40 = [v39 objectForKey:@"protocols_seen"];

  if (!v40)
  {
    v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v41 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
    [v41 setValue:v40 forKey:@"protocols_seen"];
  }

  v42 = [v32 networkProtocolName];
  v43 = [v40 objectForKey:v42];
  if (v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = &unk_286D22CA0;
  }

  v45 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v44, "intValue") + 1}];

  [v40 setObject:v45 forKey:v42];
  v46 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
  v47 = [v46 objectForKey:@"proxy_state"];

  if (!v47)
  {
    v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v48 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
    [v48 setValue:v47 forKey:@"proxy_state"];
  }

  v106 = v17;
  v107 = v14;
  v49 = [v32 isProxyConnection];
  v50 = @"not_proxied";
  if (v49)
  {
    v50 = @"proxied";
  }

  v51 = v50;
  v52 = [v47 objectForKey:v51];
  if (v52)
  {
    v53 = v52;
  }

  else
  {
    v53 = &unk_286D22CA0;
  }

  v54 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v53, "intValue") + 1}];

  [v47 setObject:v54 forKey:v51];
  v55 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
  v56 = [v55 objectForKey:@"interface-type"];

  v57 = &unk_286D22CA0;
  if (!v56)
  {
    v56 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v58 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
    [v58 setValue:v56 forKey:@"interface-type"];
  }

  v59 = [v32 _interfaceName];
  [v59 UTF8String];
  v60 = nw_interface_create_with_name();

  v61 = MEMORY[0x277CCACA8];
  type = nw_interface_get_type(v60);
  v63 = [v61 stringWithUTF8String:nw_interface_type_to_string(type)];
  v64 = [v56 objectForKey:v63];
  if (v64)
  {
    v57 = v64;
  }

  v65 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v57, "intValue") + 1}];

  [v56 setObject:v65 forKey:v63];
  v66 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
  v67 = [v66 objectForKey:@"rat"];

  if (!v67)
  {
    v67 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v68 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
    [v68 setValue:v67 forKey:@"rat"];
  }

  if (nw_interface_get_radio_type())
  {
    v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:nw_interface_radio_type_to_string()];
  }

  else
  {
    v69 = @"unknown";
  }

  v70 = [v67 objectForKey:v69];

  if (v70)
  {
    v71 = v70;
  }

  else
  {
    v71 = &unk_286D22CA0;
  }

  v72 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v71, "intValue") + 1}];

  [v67 setObject:v72 forKey:v69];
  v73 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
  v74 = [v73 objectForKey:@"multipath"];

  v75 = &unk_286D22CA0;
  if (!v74)
  {
    v74 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v76 = [(NetworkQualityExecutionsResult *)self->super._results mutableOtherValues];
    [v76 setValue:v74 forKey:@"multipath"];
  }

  v77 = [v32 isMultipath];
  v78 = @"disabled";
  if (v77)
  {
    v78 = @"enabled";
  }

  v79 = v78;
  v80 = [v74 objectForKey:v79];
  if (v80)
  {
    v75 = v80;
  }

  v81 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v75, "intValue") + 1}];

  [v74 setObject:v81 forKey:v79];
  v82 = MEMORY[0x277CCABB0];
  v83 = [v32 responseEndDate];
  v84 = [v32 requestStartDate];
  [v83 timeIntervalSinceDate:v84];
  v86 = v85 * 1000.0;
  *&v86 = v86;
  v87 = [v82 numberWithFloat:v86];
  [v112 addObject:v87];

  v88 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v88 addObjectsFromArray:v107];
  [v88 addObjectsFromArray:v106];
  [v88 addObjectsFromArray:v112];
  v89 = MEMORY[0x277CCABB0];
  *&v90 = get_average(v88);
  v91 = [v89 numberWithFloat:v90];
  v92 = [(NetworkQualityResult *)self->super._results latency];
  [v92 setValue:v91];

  v93 = [(NetworkQualityResult *)self->super._results latency];
  [v93 updateConfidence:3];

  v10 = v108;
  if ([v107 count])
  {
    v94 = MEMORY[0x277CCABB0];
    *&v95 = get_average(v107);
    v96 = [v94 numberWithFloat:v95];
    [(NetworkQualityResult *)self->super._results setTcpLatency:v96];

    v97 = [(NetworkQualityResult *)self->super._results tcpLatency];
    [v97 floatValue];
    if (fabsf(v98) >= 0.00000011921)
    {
    }

    else
    {
      v99 = [v107 count];

      if (v99 == 1)
      {
        [(NetworkQualityResult *)self->super._results setTcpLatency:&unk_286D22D30];
      }
    }
  }

  if ([v106 count])
  {
    v100 = MEMORY[0x277CCABB0];
    *&v101 = get_average(v106);
    v102 = [v100 numberWithFloat:v101];
    [(NetworkQualityResult *)self->super._results setTlsLatency:v102];
  }

  v103 = MEMORY[0x277CCABB0];
  *&v104 = get_average(v112);
  v105 = [v103 numberWithFloat:v104];
  [(NetworkQualityResult *)self->super._results setHttpLatency:v105];

  [(LatencyURLSessionDelegate *)self shareProgress];
LABEL_59:
}

uint64_t __76__IdleLatencyURLSessionDelegate_URLSession_task_didFinishCollectingMetrics___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  *(*(*(a1 + 48) + 8) + 24) = a3;
  if (([*(a1 + 32) isProxy] & 1) == 0)
  {
    v7 = nw_protocol_copy_tcp_definition();
    v8 = MEMORY[0x25F873390](v6, v7);

    if (v8)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      *(*(*(a1 + 64) + 8) + 24) = a3;
    }
  }

  return 1;
}

uint64_t __76__IdleLatencyURLSessionDelegate_URLSession_task_didFinishCollectingMetrics___block_invoke_2(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, int a5)
{
  v8 = a2;
  v9 = nw_protocol_copy_tcp_definition();
  if (MEMORY[0x25F873390](v8, v9))
  {
  }

  else
  {
    v10 = nw_protocol_copy_quic_connection_definition();
    v11 = MEMORY[0x25F873390](v8, v10);

    if (!v11)
    {
      v21 = 1;
      goto LABEL_13;
    }
  }

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:nw_connection_client_accurate_ecn_state_to_string(a3)];
  v13 = [*(a1 + 32) objectForKey:v12];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &unk_286D22CA0;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v14, "intValue") + 1}];

  [*(a1 + 32) setObject:v15 forKey:v12];
  v16 = @"disabled";
  if (a5)
  {
    v16 = @"enabled";
  }

  v17 = *(a1 + 40);
  v18 = v16;
  v19 = [v17 objectForKey:v18];

  if (!v19)
  {
    v19 = &unk_286D22CA0;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v19, "intValue") + 1}];

  [*(a1 + 40) setObject:v20 forKey:v18];
  v21 = 0;
LABEL_13:

  return v21;
}

- (void)URLSession:task:didCompleteWithError:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - Load failed with error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end