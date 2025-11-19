@interface NPTPing
- (NPTPing)initWithCoder:(id)a3;
- (NPTPing)initWithNetworkActivityParent:(id)a3;
- (NPTPing)initWithNetworkActivityParent:(id)a3 pingTarget:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)delegate;
- (void)cancel;
- (void)encodeWithCoder:(id)a3;
- (void)sendPing;
- (void)simplePing:(id)a3 didFailToSendPacket:(id)a4 sequenceNumber:(unsigned __int16)a5 error:(id)a6;
- (void)simplePing:(id)a3 didFailWithError:(id)a4;
- (void)simplePing:(id)a3 didReceivePingResponsePacket:(id)a4 sequenceNumber:(unsigned __int16)a5;
- (void)simplePing:(id)a3 didReceiveUnexpectedPacket:(id)a4;
- (void)simplePing:(id)a3 didTimeOut:(id)a4 sequenceNumber:(unsigned __int16)a5 error:(id)a6;
- (void)startWithNumberOfPings:(unint64_t)a3 forcingIPv4:(BOOL)a4 forcingIPv6:(BOOL)a5 completion:(id)a6;
- (void)stop;
@end

@implementation NPTPing

- (NPTPing)initWithNetworkActivityParent:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = NPTPing;
  v6 = [(NPTPing *)&v17 init];
  if (v6)
  {
    v7 = objc_alloc_init(NPTPingResult);
    [(NPTPing *)v6 setResults:v7];

    v8 = [[SimplePing alloc] initWithHostName:@"npt.cdn-apple.com"];
    pinger = v6->pinger;
    v6->pinger = v8;

    [(SimplePing *)v6->pinger setDelegate:v6];
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pings = v6->pings;
    v6->pings = v10;

    v12 = nw_activity_create();
    pingActivity = v6->pingActivity;
    v6->pingActivity = v12;

    objc_storeStrong(&v6->activityParent, a3);
    activityParent = v6->activityParent;
    v14 = v6->pingActivity;
    nw_activity_set_parent_activity();
  }

  return v6;
}

- (NPTPing)initWithNetworkActivityParent:(id)a3 pingTarget:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = NPTPing;
  v9 = [(NPTPing *)&v20 init];
  if (v9)
  {
    v10 = objc_alloc_init(NPTPingResult);
    [(NPTPing *)v9 setResults:v10];

    v11 = [[SimplePing alloc] initWithHostName:v8];
    pinger = v9->pinger;
    v9->pinger = v11;

    [(SimplePing *)v9->pinger setDelegate:v9];
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pings = v9->pings;
    v9->pings = v13;

    v15 = nw_activity_create();
    pingActivity = v9->pingActivity;
    v9->pingActivity = v15;

    objc_storeStrong(&v9->activityParent, a3);
    activityParent = v9->activityParent;
    v17 = v9->pingActivity;
    nw_activity_set_parent_activity();
  }

  return v9;
}

- (void)startWithNumberOfPings:(unint64_t)a3 forcingIPv4:(BOOL)a4 forcingIPv6:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v7 = a4;
  v18 = *MEMORY[0x277D85DE8];
  [(NPTPing *)self setCompletion:a6];
  pingActivity = self->pingActivity;
  nw_activity_activate();
  [(NPTPing *)self setCanceled:0];
  self->pingCount = a3;
  if (v7 && !v6)
  {
    v11 = 1;
LABEL_7:
    [(SimplePing *)self->pinger setAddressStyle:v11];
    goto LABEL_8;
  }

  if (v6 && !v7)
  {
    v11 = 2;
    goto LABEL_7;
  }

LABEL_8:
  v12 = [(NPTPing *)self delegate];

  if (v12)
  {
    v13 = [(NPTPing *)self delegate];
    [v13 pingWillStartPinging];
  }

  v14 = +[NPTLogger network];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    v17 = a3;
    _os_log_impl(&dword_233421000, v14, OS_LOG_TYPE_DEFAULT, "Will test ping latency by sending %lu pings to Apple CDN Server", &v16, 0xCu);
  }

  [(SimplePing *)self->pinger start];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)sendPing
{
  pings = self->pings;
  v4 = objc_alloc_init(Ping);
  [(NSMutableArray *)pings addObject:v4];

  pinger = self->pinger;

  [(SimplePing *)pinger sendPingWithData:0];
}

- (void)stop
{
  v3 = [(NPTPing *)self results];
  v4 = [v3 error];

  v5 = [NPTPingResult alloc];
  pings = self->pings;
  v7 = [(SimplePing *)self->pinger hostName];
  v8 = [(NPTPingResult *)v5 initWithPings:pings usingAddress:v7];
  [(NPTPing *)self setResults:v8];

  v9 = [(NPTPing *)self results];
  [v9 setError:v4];

  [(SimplePing *)self->pinger stop];
  v10 = [(NPTPing *)self results];
  [v10 percentLost];
  if (v11 == 0.0)
  {
    v12 = [(NPTPing *)self results];
    v13 = [v12 pings];
    v14 = [v13 count];
    pingCount = self->pingCount;

    v16 = v14 == pingCount;
  }

  else
  {

    v16 = 0;
  }

  pingActivity = self->pingActivity;
  nw_activity_complete_with_reason();
  v18 = [(NPTPing *)self delegate];

  if (v18)
  {
    v19 = [(NPTPing *)self delegate];
    v20 = [(NPTPing *)self results];
    [v19 pingDidFinishWithResults:v20];
  }

  v21 = [(NPTPing *)self completion];

  if (v21)
  {
    if (v16)
    {
      v22 = 0;
    }

    else
    {
      v58 = MEMORY[0x277CCACA8];
      v60 = v4;
      v23 = [(NPTPing *)self results];
      v24 = [v23 pings];
      v25 = [v24 count];
      v26 = [(NPTPing *)self results];
      v27 = [v26 pings];
      v28 = [v27 count];
      v29 = [(NPTPing *)self results];
      [v29 percentLost];
      v31 = ((v30 / -100.0 + 1.0) * v28);
      v32 = self->pingCount;
      v33 = [(NPTPing *)self results];
      [v33 percentLost];
      v35 = [v58 stringWithFormat:@"Errors encountered with ping. Sent: %ld Received: %ld Expected: %lu Percent Lost: %f", v25, v31, v32, v34];

      v36 = [(NPTPing *)self results];
      v37 = [v36 error];
      v38 = [v37 localizedDescription];

      if (v38)
      {
        v55 = MEMORY[0x277CCACA8];
        v59 = [(NPTPing *)self results];
        v57 = [v59 error];
        v54 = [v57 localizedDescription];
        v56 = [(NPTPing *)self results];
        v39 = [v56 pings];
        v40 = [v39 count];
        v41 = [(NPTPing *)self results];
        v42 = [v41 pings];
        v43 = [v42 count];
        v44 = [(NPTPing *)self results];
        [v44 percentLost];
        v46 = ((v45 / -100.0 + 1.0) * v43);
        v47 = self->pingCount;
        v48 = [(NPTPing *)self results];
        [v48 percentLost];
        v50 = [v55 stringWithFormat:@"%@. Sent: %ld Received: %ld Expected: %lu Percent Lost: %.02f", v54, v40, v46, v47, v49];

        v35 = v50;
      }

      v51 = [MEMORY[0x277CBEB38] dictionary];
      [v51 setValue:v35 forKey:*MEMORY[0x277CCA450]];
      v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPTKit" code:-1 userInfo:v51];
      v52 = [(NPTPing *)self results];
      [v52 setError:v22];

      v4 = v60;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __15__NPTPing_stop__block_invoke;
    block[3] = &unk_2789D4388;
    block[4] = self;
    v62 = v22;
    v53 = v22;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __15__NPTPing_stop__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) completion];
  v2 = [*(a1 + 32) results];
  v3[2](v3, v2, *(a1 + 40));
}

- (void)simplePing:(id)a3 didReceivePingResponsePacket:(id)a4 sequenceNumber:(unsigned __int16)a5
{
  v6 = a5;
  v7 = [(NSMutableArray *)self->pings objectAtIndex:a5, a4];
  [v7 setWasSuccessful:1];

  v8 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v9 = [(NSMutableArray *)self->pings objectAtIndex:v6];
  [v9 setEndTime:v8];

  if ([(NPTPing *)self canceled]|| [(NSMutableArray *)self->pings count]>= self->pingCount)
  {

    [(NPTPing *)self stop];
  }

  else
  {

    [(NPTPing *)self sendPing];
  }
}

- (void)simplePing:(id)a3 didFailWithError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NPTLogger network];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [NPTPing simplePing:v6 didFailWithError:?];
  }

  [v7 stop];
  v9 = [(NPTPing *)self results];
  v10 = [v9 error];

  if (!v10)
  {
    v11 = [(NPTPing *)self results];
    [v11 setError:v6];
  }

  v12 = [(NPTPing *)self delegate];

  if (v12)
  {
    v13 = [(NPTPing *)self delegate];
    [v13 pingDidFinishWithError:v6];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__NPTPing_simplePing_didFailWithError___block_invoke;
  v15[3] = &unk_2789D4388;
  v15[4] = self;
  v16 = v6;
  v14 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

void __39__NPTPing_simplePing_didFailWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];

  if (v2)
  {
    v3 = [*(a1 + 32) completion];
    (*(v3 + 2))(v3, 0, *(a1 + 40));
  }
}

- (void)simplePing:(id)a3 didTimeOut:(id)a4 sequenceNumber:(unsigned __int16)a5 error:(id)a6
{
  v6 = a5;
  v8 = a6;
  v9 = +[NPTLogger network];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [NPTPing simplePing:v8 didTimeOut:? sequenceNumber:? error:?];
  }

  v10 = [(NPTPing *)self results];
  v11 = [v10 error];

  if (!v11)
  {
    v12 = [(NPTPing *)self results];
    [v12 setError:v8];
  }

  if (![(NSMutableArray *)self->pings count])
  {
    goto LABEL_9;
  }

  v13 = [(NSMutableArray *)self->pings objectAtIndex:v6];
  [v13 setWasSuccessful:0];

  v14 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v15 = [(NSMutableArray *)self->pings objectAtIndex:v6];
  [v15 setEndTime:v14];

  if ([(NPTPing *)self canceled]|| [(NSMutableArray *)self->pings count]>= self->pingCount)
  {
LABEL_9:
    [(NPTPing *)self stop];
  }

  else
  {
    [(NPTPing *)self sendPing];
  }
}

- (void)simplePing:(id)a3 didFailToSendPacket:(id)a4 sequenceNumber:(unsigned __int16)a5 error:(id)a6
{
  v6 = a5;
  v8 = a6;
  v9 = +[NPTLogger network];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [NPTPing simplePing:v8 didFailToSendPacket:? sequenceNumber:? error:?];
  }

  v10 = [(NSMutableArray *)self->pings objectAtIndex:v6];
  [v10 setWasSuccessful:0];

  v11 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v12 = [(NSMutableArray *)self->pings objectAtIndex:v6];
  [v12 setEndTime:v11];

  v13 = [(NPTPing *)self results];
  v14 = [v13 error];

  if (!v14)
  {
    v15 = [(NPTPing *)self results];
    [v15 setError:v8];
  }

  if ([(NPTPing *)self canceled]|| [(NSMutableArray *)self->pings count]>= self->pingCount)
  {
    [(NPTPing *)self stop];
  }

  else
  {
    [(NPTPing *)self sendPing];
  }
}

- (void)simplePing:(id)a3 didReceiveUnexpectedPacket:(id)a4
{
  v5 = [NPTLogger network:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [NPTPing simplePing:v5 didReceiveUnexpectedPacket:?];
  }

  v6 = [(NSMutableArray *)self->pings objectAtIndex:[(NSMutableArray *)self->pings count]- 1];
  [v6 setWasSuccessful:0];

  v7 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v8 = [(NSMutableArray *)self->pings objectAtIndex:[(NSMutableArray *)self->pings count]- 1];
  [v8 setEndTime:v7];

  if ([(NPTPing *)self canceled]|| [(NSMutableArray *)self->pings count]>= self->pingCount)
  {
    [(NPTPing *)self stop];
  }

  else
  {
    [(NPTPing *)self sendPing];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NPTPing *)self results];
  [v4 encodeObject:v5 forKey:@"pingResults"];
}

- (NPTPing)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = NPTPing;
  v3 = a3;
  v4 = [(NPTPing *)&v7 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"pingResults", v7.receiver, v7.super_class}];

  [(NPTPing *)v4 setResults:v5];
  return v4;
}

- (void)cancel
{
  [(NPTPing *)self setCanceled:1];
  pinger = self->pinger;

  [(SimplePing *)pinger stop];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NPTPing allocWithZone:?]];
  v5 = [(NPTPing *)self results];
  [(NPTPing *)v4 setResults:v5];

  return v4;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)simplePing:(void *)a1 didFailWithError:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)simplePing:(void *)a1 didTimeOut:sequenceNumber:error:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)simplePing:(void *)a1 didFailToSendPacket:sequenceNumber:error:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end