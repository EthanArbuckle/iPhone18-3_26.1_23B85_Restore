@interface LSSEventQueue
- (LSSEventQueue)init;
- (os_unfair_lock_s)lightSourceForTime:(os_unfair_lock_s *)a1;
- (void)intervalForTime:(double)a3@<D0>;
- (void)schedule:(uint64_t)a1;
@end

@implementation LSSEventQueue

- (LSSEventQueue)init
{
  v6.receiver = self;
  v6.super_class = LSSEventQueue;
  v2 = [(LSSEventQueue *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    buffer = v2->_buffer;
    v2->_buffer = v3;
  }

  return v2;
}

- (void)schedule:(uint64_t)a1
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 16));
    [(LSSSampleBuffer *)*(a1 + 8) removeStartingAt:?];
    v4 = *(a1 + 8);
    v5 = *(a2 + 48);
    v9[2] = *(a2 + 32);
    v9[3] = v5;
    v6 = *(a2 + 80);
    v9[4] = *(a2 + 64);
    v9[5] = v6;
    v7 = *(a2 + 16);
    v9[0] = *a2;
    v9[1] = v7;
    [(LSSSampleBuffer *)v4 append:v9];
    os_unfair_lock_unlock((a1 + 16));
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)intervalForTime:(double)a3@<D0>
{
  v14 = *MEMORY[0x277D85DE8];
  a2[11] = 0u;
  a2[12] = 0u;
  a2[9] = 0u;
  a2[10] = 0u;
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 16));
    [(LSSSampleBuffer *)*(a1 + 8) intervalContaining:v13, a3];
    v6 = v13[11];
    a2[10] = v13[10];
    a2[11] = v6;
    a2[12] = v13[12];
    v7 = v13[7];
    a2[6] = v13[6];
    a2[7] = v7;
    v8 = v13[9];
    a2[8] = v13[8];
    a2[9] = v8;
    v9 = v13[3];
    a2[2] = v13[2];
    a2[3] = v9;
    v10 = v13[5];
    a2[4] = v13[4];
    a2[5] = v10;
    v11 = v13[1];
    *a2 = v13[0];
    a2[1] = v11;
    os_unfair_lock_unlock((a1 + 16));
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (os_unfair_lock_s)lightSourceForTime:(os_unfair_lock_s *)a1
{
  v42 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_4;
  }

  v3 = a1;
  os_unfair_lock_lock(a1 + 4);
  [(LSSSampleBuffer *)*&v3[2]._os_unfair_lock_opaque intervalContaining:a2];
  v24 = v36;
  v25 = v37;
  v26 = v38;
  v27 = v39;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v23 = v35;
  v16 = v28;
  v17 = v29;
  v18 = v30;
  v19 = v31;
  v4 = v40;
  v5 = v41;
  os_unfair_lock_unlock(v3 + 4);
  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v36 = v24;
    v37 = v25;
    v38 = v26;
    v39 = v27;
    v32 = v20;
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v28 = v16;
    v29 = v17;
    v30 = v18;
    v31 = v19;
    v40 = v4;
    v41 = v5;
    LSSLightDirectionFromTimeInInterval(&v28, &v10, a2);
    v6 = [LSSLightSource alloc];
    v30 = v12;
    v31 = v13;
    v32 = v14;
    v33 = v15;
    v28 = v10;
    v29 = v11;
    a1 = [(LSSLightSource *)v6 initWithSample:&v28];
LABEL_4:
    v7 = *MEMORY[0x277D85DE8];
    goto LABEL_5;
  }

  a1 = 0;
  v9 = *MEMORY[0x277D85DE8];
LABEL_5:

  return a1;
}

@end