void sub_25A2C4890(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void mlx::core::distributed::ring::RingGroup::all_gather(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  command_encoder = mlx::core::cpu::get_command_encoder(a4, a5);
  v9 = *(*a2 + 60) * *(*a2 + 48);
  *&v10 = *(*a2 + 152);
  *(&v10 + 1) = v9;
  v11 = *(*a3 + 152);
  v12 = a1;
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::ring::RingGroup::all_gather(mlx::core::array const&,mlx::core::array&,mlx::core::Stream)::{lambda(void)#1}>(command_encoder, &v10);
}

void mlx::core::distributed::ring::RingGroup::send(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  command_encoder = mlx::core::cpu::get_command_encoder(a4, a5);
  v9 = *(*a2 + 60) * *(*a2 + 48);
  *&v10 = *(*a2 + 152);
  *(&v10 + 1) = v9;
  v11 = a3;
  v12 = a1;
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::ring::RingGroup::send(mlx::core::array const&,int,mlx::core::Stream)::{lambda(void)#1}>(command_encoder, &v10);
}

void mlx::core::distributed::ring::RingGroup::recv(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  command_encoder = mlx::core::cpu::get_command_encoder(a4, a5);
  v9 = *(*a2 + 60) * *(*a2 + 48);
  *&v10 = *(*a2 + 152);
  *(&v10 + 1) = v9;
  v11 = a3;
  v12 = a1;
  mlx::core::cpu::CommandEncoder::dispatch<mlx::core::distributed::ring::RingGroup::recv(mlx::core::array &,int,mlx::core::Stream)::{lambda(void)#1}>(command_encoder, &v10);
}

void mlx::core::distributed::ring::RingGroup::all_max(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  v5 = *a3;
  switch(*(*a3 + 56))
  {
    case 0:
      v7 = *(*a2 + 152);
      v8 = *(v5 + 152);
      command_encoder = mlx::core::cpu::get_command_encoder(a4, a5);
      v10 = *(*a2 + 48);
      v11 = (*(command_encoder + 10) + 1) % 10;
      *(command_encoder + 10) = v11;
      v12 = mlx::core::scheduler::scheduler(command_encoder);
      if (v11)
      {
        v13 = *(v12[1] + 8 * *command_encoder);
        std::mutex::lock(v13);
        if (*(v13 + 160) != 1)
        {
          v14 = *(v13 + 72);
          v15 = *(v13 + 80);
          v16 = 16 * (v15 - v14) - 1;
          if (v15 == v14)
          {
            v16 = 0;
          }

          if (v16 == *(v13 + 104) + *(v13 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v13 + 64));
            v14 = *(v13 + 72);
            v15 = *(v13 + 80);
          }

          if (v15 == v14)
          {
            v18 = 0;
          }

          else
          {
            v17 = *(v13 + 104) + *(v13 + 96);
            v18 = *(v14 + ((v17 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v17 & 0x7F);
          }

          *(v18 + 24) = 0;
          operator new();
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v12);
      v308 = *command_encoder;
      v322 = *(command_encoder + 2);
      v225 = *(*(mlx::core::scheduler::scheduler(v224) + 1) + 8 * *command_encoder);
      std::mutex::lock(v225);
      if (*(v225 + 160) != 1)
      {
        v226 = *(v225 + 72);
        v227 = *(v225 + 80);
        v228 = 16 * (v227 - v226) - 1;
        if (v227 == v226)
        {
          v228 = 0;
        }

        if (v228 == *(v225 + 104) + *(v225 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v225 + 64));
          v226 = *(v225 + 72);
          v227 = *(v225 + 80);
        }

        if (v227 == v226)
        {
          v230 = 0;
        }

        else
        {
          v229 = *(v225 + 104) + *(v225 + 96);
          v230 = *(v226 + ((v229 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v229 & 0x7F);
        }

        *(v230 + 24) = 0;
        operator new();
      }

      v294 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v294, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v294, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 1:
      v103 = *(*a2 + 152);
      v104 = *(v5 + 152);
      v105 = mlx::core::cpu::get_command_encoder(a4, a5);
      v106 = *(*a2 + 48);
      v107 = (*(v105 + 10) + 1) % 10;
      *(v105 + 10) = v107;
      v108 = mlx::core::scheduler::scheduler(v105);
      if (v107)
      {
        v109 = *(v108[1] + 8 * *v105);
        std::mutex::lock(v109);
        if (*(v109 + 160) != 1)
        {
          v110 = *(v109 + 72);
          v111 = *(v109 + 80);
          v112 = 16 * (v111 - v110) - 1;
          if (v111 == v110)
          {
            v112 = 0;
          }

          if (v112 == *(v109 + 104) + *(v109 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v109 + 64));
            v110 = *(v109 + 72);
            v111 = *(v109 + 80);
          }

          if (v111 == v110)
          {
            v114 = 0;
          }

          else
          {
            v113 = *(v109 + 104) + *(v109 + 96);
            v114 = *(v110 + ((v113 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v113 & 0x7F);
          }

          *(v114 + 24) = 0;
          operator new();
        }

        v281 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v281, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v281, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v108);
      v309 = *v105;
      v323 = *(v105 + 2);
      v232 = *(*(mlx::core::scheduler::scheduler(v231) + 1) + 8 * *v105);
      std::mutex::lock(v232);
      if (*(v232 + 160) != 1)
      {
        v233 = *(v232 + 72);
        v234 = *(v232 + 80);
        v235 = 16 * (v234 - v233) - 1;
        if (v234 == v233)
        {
          v235 = 0;
        }

        if (v235 == *(v232 + 104) + *(v232 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v232 + 64));
          v233 = *(v232 + 72);
          v234 = *(v232 + 80);
        }

        if (v234 == v233)
        {
          v237 = 0;
        }

        else
        {
          v236 = *(v232 + 104) + *(v232 + 96);
          v237 = *(v233 + ((v236 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v236 & 0x7F);
        }

        *(v237 + 24) = 0;
        operator new();
      }

      v295 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v295, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v295, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 2:
      v67 = *(*a2 + 152);
      v68 = *(v5 + 152);
      v69 = mlx::core::cpu::get_command_encoder(a4, a5);
      v70 = *(*a2 + 48);
      v71 = (*(v69 + 10) + 1) % 10;
      *(v69 + 10) = v71;
      v72 = mlx::core::scheduler::scheduler(v69);
      if (v71)
      {
        v73 = *(v72[1] + 8 * *v69);
        std::mutex::lock(v73);
        if (*(v73 + 160) != 1)
        {
          v74 = *(v73 + 72);
          v75 = *(v73 + 80);
          v76 = 16 * (v75 - v74) - 1;
          if (v75 == v74)
          {
            v76 = 0;
          }

          if (v76 == *(v73 + 104) + *(v73 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v73 + 64));
            v74 = *(v73 + 72);
            v75 = *(v73 + 80);
          }

          if (v75 == v74)
          {
            v78 = 0;
          }

          else
          {
            v77 = *(v73 + 104) + *(v73 + 96);
            v78 = *(v74 + ((v77 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v77 & 0x7F);
          }

          *(v78 + 24) = 0;
          operator new();
        }

        v277 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v277, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v277, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v72);
      v305 = *v69;
      v319 = *(v69 + 2);
      v204 = *(*(mlx::core::scheduler::scheduler(v203) + 1) + 8 * *v69);
      std::mutex::lock(v204);
      if (*(v204 + 160) != 1)
      {
        v205 = *(v204 + 72);
        v206 = *(v204 + 80);
        v207 = 16 * (v206 - v205) - 1;
        if (v206 == v205)
        {
          v207 = 0;
        }

        if (v207 == *(v204 + 104) + *(v204 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v204 + 64));
          v205 = *(v204 + 72);
          v206 = *(v204 + 80);
        }

        if (v206 == v205)
        {
          v209 = 0;
        }

        else
        {
          v208 = *(v204 + 104) + *(v204 + 96);
          v209 = *(v205 + ((v208 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v208 & 0x7F);
        }

        *(v209 + 24) = 0;
        operator new();
      }

      v291 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v291, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v291, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 3:
      v79 = *(*a2 + 152);
      v80 = *(v5 + 152);
      v81 = mlx::core::cpu::get_command_encoder(a4, a5);
      v82 = *(*a2 + 48);
      v83 = (*(v81 + 10) + 1) % 10;
      *(v81 + 10) = v83;
      v84 = mlx::core::scheduler::scheduler(v81);
      if (v83)
      {
        v85 = *(v84[1] + 8 * *v81);
        std::mutex::lock(v85);
        if (*(v85 + 160) != 1)
        {
          v86 = *(v85 + 72);
          v87 = *(v85 + 80);
          v88 = 16 * (v87 - v86) - 1;
          if (v87 == v86)
          {
            v88 = 0;
          }

          if (v88 == *(v85 + 104) + *(v85 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v85 + 64));
            v86 = *(v85 + 72);
            v87 = *(v85 + 80);
          }

          if (v87 == v86)
          {
            v90 = 0;
          }

          else
          {
            v89 = *(v85 + 104) + *(v85 + 96);
            v90 = *(v86 + ((v89 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v89 & 0x7F);
          }

          *(v90 + 24) = 0;
          operator new();
        }

        v278 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v278, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v278, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v84);
      v306 = *v81;
      v320 = *(v81 + 2);
      v211 = *(*(mlx::core::scheduler::scheduler(v210) + 1) + 8 * *v81);
      std::mutex::lock(v211);
      if (*(v211 + 160) != 1)
      {
        v212 = *(v211 + 72);
        v213 = *(v211 + 80);
        v214 = 16 * (v213 - v212) - 1;
        if (v213 == v212)
        {
          v214 = 0;
        }

        if (v214 == *(v211 + 104) + *(v211 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v211 + 64));
          v212 = *(v211 + 72);
          v213 = *(v211 + 80);
        }

        if (v213 == v212)
        {
          v216 = 0;
        }

        else
        {
          v215 = *(v211 + 104) + *(v211 + 96);
          v216 = *(v212 + ((v215 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v215 & 0x7F);
        }

        *(v216 + 24) = 0;
        operator new();
      }

      v292 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v292, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v292, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 4:
      v31 = *(*a2 + 152);
      v32 = *(v5 + 152);
      v33 = mlx::core::cpu::get_command_encoder(a4, a5);
      v34 = *(*a2 + 48);
      v35 = (*(v33 + 10) + 1) % 10;
      *(v33 + 10) = v35;
      v36 = mlx::core::scheduler::scheduler(v33);
      if (v35)
      {
        v37 = *(v36[1] + 8 * *v33);
        std::mutex::lock(v37);
        if (*(v37 + 160) != 1)
        {
          v38 = *(v37 + 72);
          v39 = *(v37 + 80);
          v40 = 16 * (v39 - v38) - 1;
          if (v39 == v38)
          {
            v40 = 0;
          }

          if (v40 == *(v37 + 104) + *(v37 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v37 + 64));
            v38 = *(v37 + 72);
            v39 = *(v37 + 80);
          }

          if (v39 == v38)
          {
            v42 = 0;
          }

          else
          {
            v41 = *(v37 + 104) + *(v37 + 96);
            v42 = *(v38 + ((v41 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v41 & 0x7F);
          }

          *(v42 + 24) = 0;
          operator new();
        }

        v274 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v274, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v274, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v36);
      v302 = *v33;
      v316 = *(v33 + 2);
      v183 = *(*(mlx::core::scheduler::scheduler(v182) + 1) + 8 * *v33);
      std::mutex::lock(v183);
      if (*(v183 + 160) != 1)
      {
        v184 = *(v183 + 72);
        v185 = *(v183 + 80);
        v186 = 16 * (v185 - v184) - 1;
        if (v185 == v184)
        {
          v186 = 0;
        }

        if (v186 == *(v183 + 104) + *(v183 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v183 + 64));
          v184 = *(v183 + 72);
          v185 = *(v183 + 80);
        }

        if (v185 == v184)
        {
          v188 = 0;
        }

        else
        {
          v187 = *(v183 + 104) + *(v183 + 96);
          v188 = *(v184 + ((v187 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v187 & 0x7F);
        }

        *(v188 + 24) = 0;
        operator new();
      }

      v288 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v288, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v288, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 5:
      v115 = *(*a2 + 152);
      v116 = *(v5 + 152);
      v117 = mlx::core::cpu::get_command_encoder(a4, a5);
      v118 = *(*a2 + 48);
      v119 = (*(v117 + 10) + 1) % 10;
      *(v117 + 10) = v119;
      v120 = mlx::core::scheduler::scheduler(v117);
      if (v119)
      {
        v121 = *(v120[1] + 8 * *v117);
        std::mutex::lock(v121);
        if (*(v121 + 160) != 1)
        {
          v122 = *(v121 + 72);
          v123 = *(v121 + 80);
          v124 = 16 * (v123 - v122) - 1;
          if (v123 == v122)
          {
            v124 = 0;
          }

          if (v124 == *(v121 + 104) + *(v121 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v121 + 64));
            v122 = *(v121 + 72);
            v123 = *(v121 + 80);
          }

          if (v123 == v122)
          {
            v126 = 0;
          }

          else
          {
            v125 = *(v121 + 104) + *(v121 + 96);
            v126 = *(v122 + ((v125 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v125 & 0x7F);
          }

          *(v126 + 24) = 0;
          operator new();
        }

        v282 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v282, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v282, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v120);
      v310 = *v117;
      v324 = *(v117 + 2);
      v239 = *(*(mlx::core::scheduler::scheduler(v238) + 1) + 8 * *v117);
      std::mutex::lock(v239);
      if (*(v239 + 160) != 1)
      {
        v240 = *(v239 + 72);
        v241 = *(v239 + 80);
        v242 = 16 * (v241 - v240) - 1;
        if (v241 == v240)
        {
          v242 = 0;
        }

        if (v242 == *(v239 + 104) + *(v239 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v239 + 64));
          v240 = *(v239 + 72);
          v241 = *(v239 + 80);
        }

        if (v241 == v240)
        {
          v244 = 0;
        }

        else
        {
          v243 = *(v239 + 104) + *(v239 + 96);
          v244 = *(v240 + ((v243 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v243 & 0x7F);
        }

        *(v244 + 24) = 0;
        operator new();
      }

      v296 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v296, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v296, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 6:
      v139 = *(*a2 + 152);
      v140 = *(v5 + 152);
      v141 = mlx::core::cpu::get_command_encoder(a4, a5);
      v142 = *(*a2 + 48);
      v143 = (*(v141 + 10) + 1) % 10;
      *(v141 + 10) = v143;
      v144 = mlx::core::scheduler::scheduler(v141);
      if (v143)
      {
        v145 = *(v144[1] + 8 * *v141);
        std::mutex::lock(v145);
        if (*(v145 + 160) != 1)
        {
          v146 = *(v145 + 72);
          v147 = *(v145 + 80);
          v148 = 16 * (v147 - v146) - 1;
          if (v147 == v146)
          {
            v148 = 0;
          }

          if (v148 == *(v145 + 104) + *(v145 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v145 + 64));
            v146 = *(v145 + 72);
            v147 = *(v145 + 80);
          }

          if (v147 == v146)
          {
            v150 = 0;
          }

          else
          {
            v149 = *(v145 + 104) + *(v145 + 96);
            v150 = *(v146 + ((v149 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v149 & 0x7F);
          }

          *(v150 + 24) = 0;
          operator new();
        }

        v284 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v284, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v284, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v144);
      v312 = *v141;
      v326 = *(v141 + 2);
      v253 = *(*(mlx::core::scheduler::scheduler(v252) + 1) + 8 * *v141);
      std::mutex::lock(v253);
      if (*(v253 + 160) != 1)
      {
        v254 = *(v253 + 72);
        v255 = *(v253 + 80);
        v256 = 16 * (v255 - v254) - 1;
        if (v255 == v254)
        {
          v256 = 0;
        }

        if (v256 == *(v253 + 104) + *(v253 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v253 + 64));
          v254 = *(v253 + 72);
          v255 = *(v253 + 80);
        }

        if (v255 == v254)
        {
          v258 = 0;
        }

        else
        {
          v257 = *(v253 + 104) + *(v253 + 96);
          v258 = *(v254 + ((v257 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v257 & 0x7F);
        }

        *(v258 + 24) = 0;
        operator new();
      }

      v298 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v298, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v298, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 7:
      v91 = *(*a2 + 152);
      v92 = *(v5 + 152);
      v93 = mlx::core::cpu::get_command_encoder(a4, a5);
      v94 = *(*a2 + 48);
      v95 = (*(v93 + 10) + 1) % 10;
      *(v93 + 10) = v95;
      v96 = mlx::core::scheduler::scheduler(v93);
      if (v95)
      {
        v97 = *(v96[1] + 8 * *v93);
        std::mutex::lock(v97);
        if (*(v97 + 160) != 1)
        {
          v98 = *(v97 + 72);
          v99 = *(v97 + 80);
          v100 = 16 * (v99 - v98) - 1;
          if (v99 == v98)
          {
            v100 = 0;
          }

          if (v100 == *(v97 + 104) + *(v97 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v97 + 64));
            v98 = *(v97 + 72);
            v99 = *(v97 + 80);
          }

          if (v99 == v98)
          {
            v102 = 0;
          }

          else
          {
            v101 = *(v97 + 104) + *(v97 + 96);
            v102 = *(v98 + ((v101 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v101 & 0x7F);
          }

          *(v102 + 24) = 0;
          operator new();
        }

        v280 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v280, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v280, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v96);
      v307 = *v93;
      v321 = *(v93 + 2);
      v218 = *(*(mlx::core::scheduler::scheduler(v217) + 1) + 8 * *v93);
      std::mutex::lock(v218);
      if (*(v218 + 160) != 1)
      {
        v219 = *(v218 + 72);
        v220 = *(v218 + 80);
        v221 = 16 * (v220 - v219) - 1;
        if (v220 == v219)
        {
          v221 = 0;
        }

        if (v221 == *(v218 + 104) + *(v218 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v218 + 64));
          v219 = *(v218 + 72);
          v220 = *(v218 + 80);
        }

        if (v220 == v219)
        {
          v223 = 0;
        }

        else
        {
          v222 = *(v218 + 104) + *(v218 + 96);
          v223 = *(v219 + ((v222 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v222 & 0x7F);
        }

        *(v223 + 24) = 0;
        operator new();
      }

      v293 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v293, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v293, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 8:
      v163 = *(*a2 + 152);
      v164 = *(v5 + 152);
      v165 = mlx::core::cpu::get_command_encoder(a4, a5);
      v166 = *(*a2 + 48);
      v167 = (*(v165 + 10) + 1) % 10;
      *(v165 + 10) = v167;
      v168 = mlx::core::scheduler::scheduler(v165);
      if (v167)
      {
        v169 = *(v168[1] + 8 * *v165);
        std::mutex::lock(v169);
        if (*(v169 + 160) != 1)
        {
          v170 = *(v169 + 72);
          v171 = *(v169 + 80);
          v172 = 16 * (v171 - v170) - 1;
          if (v171 == v170)
          {
            v172 = 0;
          }

          if (v172 == *(v169 + 104) + *(v169 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v169 + 64));
            v170 = *(v169 + 72);
            v171 = *(v169 + 80);
          }

          if (v171 == v170)
          {
            v174 = 0;
          }

          else
          {
            v173 = *(v169 + 104) + *(v169 + 96);
            v174 = *(v170 + ((v173 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v173 & 0x7F);
          }

          *(v174 + 24) = 0;
          operator new();
        }

        v286 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v286, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v286, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v168);
      v314 = *v165;
      v328 = *(v165 + 2);
      v267 = *(*(mlx::core::scheduler::scheduler(v266) + 1) + 8 * *v165);
      std::mutex::lock(v267);
      if (*(v267 + 160) != 1)
      {
        v268 = *(v267 + 72);
        v269 = *(v267 + 80);
        v270 = 16 * (v269 - v268) - 1;
        if (v269 == v268)
        {
          v270 = 0;
        }

        if (v270 == *(v267 + 104) + *(v267 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v267 + 64));
          v268 = *(v267 + 72);
          v269 = *(v267 + 80);
        }

        if (v269 == v268)
        {
          v272 = 0;
        }

        else
        {
          v271 = *(v267 + 104) + *(v267 + 96);
          v272 = *(v268 + ((v271 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v271 & 0x7F);
        }

        *(v272 + 24) = 0;
        operator new();
      }

      v300 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v300, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v300, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 9:
      v55 = *(*a2 + 152);
      v56 = *(v5 + 152);
      v57 = mlx::core::cpu::get_command_encoder(a4, a5);
      v58 = *(*a2 + 48);
      v59 = (*(v57 + 10) + 1) % 10;
      *(v57 + 10) = v59;
      v60 = mlx::core::scheduler::scheduler(v57);
      if (v59)
      {
        v61 = *(v60[1] + 8 * *v57);
        std::mutex::lock(v61);
        if (*(v61 + 160) != 1)
        {
          v62 = *(v61 + 72);
          v63 = *(v61 + 80);
          v64 = 16 * (v63 - v62) - 1;
          if (v63 == v62)
          {
            v64 = 0;
          }

          if (v64 == *(v61 + 104) + *(v61 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v61 + 64));
            v62 = *(v61 + 72);
            v63 = *(v61 + 80);
          }

          if (v63 == v62)
          {
            v66 = 0;
          }

          else
          {
            v65 = *(v61 + 104) + *(v61 + 96);
            v66 = *(v62 + ((v65 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v65 & 0x7F);
          }

          *(v66 + 24) = 0;
          operator new();
        }

        v276 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v276, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v276, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v60);
      v304 = *v57;
      v318 = *(v57 + 2);
      v197 = *(*(mlx::core::scheduler::scheduler(v196) + 1) + 8 * *v57);
      std::mutex::lock(v197);
      if (*(v197 + 160) != 1)
      {
        v198 = *(v197 + 72);
        v199 = *(v197 + 80);
        v200 = 16 * (v199 - v198) - 1;
        if (v199 == v198)
        {
          v200 = 0;
        }

        if (v200 == *(v197 + 104) + *(v197 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v197 + 64));
          v198 = *(v197 + 72);
          v199 = *(v197 + 80);
        }

        if (v199 == v198)
        {
          v202 = 0;
        }

        else
        {
          v201 = *(v197 + 104) + *(v197 + 96);
          v202 = *(v198 + ((v201 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v201 & 0x7F);
        }

        *(v202 + 24) = 0;
        operator new();
      }

      v290 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v290, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v290, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 0xA:
      v151 = *(*a2 + 152);
      v152 = *(v5 + 152);
      v153 = mlx::core::cpu::get_command_encoder(a4, a5);
      v154 = *(*a2 + 48);
      v155 = (*(v153 + 10) + 1) % 10;
      *(v153 + 10) = v155;
      v156 = mlx::core::scheduler::scheduler(v153);
      if (v155)
      {
        v157 = *(v156[1] + 8 * *v153);
        std::mutex::lock(v157);
        if (*(v157 + 160) != 1)
        {
          v158 = *(v157 + 72);
          v159 = *(v157 + 80);
          v160 = 16 * (v159 - v158) - 1;
          if (v159 == v158)
          {
            v160 = 0;
          }

          if (v160 == *(v157 + 104) + *(v157 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v157 + 64));
            v158 = *(v157 + 72);
            v159 = *(v157 + 80);
          }

          if (v159 == v158)
          {
            v162 = 0;
          }

          else
          {
            v161 = *(v157 + 104) + *(v157 + 96);
            v162 = *(v158 + ((v161 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v161 & 0x7F);
          }

          *(v162 + 24) = 0;
          operator new();
        }

        v285 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v285, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v285, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v156);
      v313 = *v153;
      v327 = *(v153 + 2);
      v260 = *(*(mlx::core::scheduler::scheduler(v259) + 1) + 8 * *v153);
      std::mutex::lock(v260);
      if (*(v260 + 160) != 1)
      {
        v261 = *(v260 + 72);
        v262 = *(v260 + 80);
        v263 = 16 * (v262 - v261) - 1;
        if (v262 == v261)
        {
          v263 = 0;
        }

        if (v263 == *(v260 + 104) + *(v260 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v260 + 64));
          v261 = *(v260 + 72);
          v262 = *(v260 + 80);
        }

        if (v262 == v261)
        {
          v265 = 0;
        }

        else
        {
          v264 = *(v260 + 104) + *(v260 + 96);
          v265 = *(v261 + ((v264 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v264 & 0x7F);
        }

        *(v265 + 24) = 0;
        operator new();
      }

      v299 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v299, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v299, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 0xB:
      v19 = *(*a2 + 152);
      v20 = *(v5 + 152);
      v21 = mlx::core::cpu::get_command_encoder(a4, a5);
      v22 = *(*a2 + 48);
      v23 = (*(v21 + 10) + 1) % 10;
      *(v21 + 10) = v23;
      v24 = mlx::core::scheduler::scheduler(v21);
      if (v23)
      {
        v25 = *(v24[1] + 8 * *v21);
        std::mutex::lock(v25);
        if (*(v25 + 160) != 1)
        {
          v26 = *(v25 + 72);
          v27 = *(v25 + 80);
          v28 = 16 * (v27 - v26) - 1;
          if (v27 == v26)
          {
            v28 = 0;
          }

          if (v28 == *(v25 + 104) + *(v25 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v25 + 64));
            v26 = *(v25 + 72);
            v27 = *(v25 + 80);
          }

          if (v27 == v26)
          {
            v30 = 0;
          }

          else
          {
            v29 = *(v25 + 104) + *(v25 + 96);
            v30 = *(v26 + ((v29 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v29 & 0x7F);
          }

          *(v30 + 24) = 0;
          operator new();
        }

        v273 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v273, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v273, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v24);
      v301 = *v21;
      v315 = *(v21 + 2);
      v176 = *(*(mlx::core::scheduler::scheduler(v175) + 1) + 8 * *v21);
      std::mutex::lock(v176);
      if (*(v176 + 160) != 1)
      {
        v177 = *(v176 + 72);
        v178 = *(v176 + 80);
        v179 = 16 * (v178 - v177) - 1;
        if (v178 == v177)
        {
          v179 = 0;
        }

        if (v179 == *(v176 + 104) + *(v176 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v176 + 64));
          v177 = *(v176 + 72);
          v178 = *(v176 + 80);
        }

        if (v178 == v177)
        {
          v181 = 0;
        }

        else
        {
          v180 = *(v176 + 104) + *(v176 + 96);
          v181 = *(v177 + ((v180 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v180 & 0x7F);
        }

        *(v181 + 24) = 0;
        operator new();
      }

      v287 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v287, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v287, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 0xC:
      v43 = *(*a2 + 152);
      v44 = *(v5 + 152);
      v45 = mlx::core::cpu::get_command_encoder(a4, a5);
      v46 = *(*a2 + 48);
      v47 = (*(v45 + 10) + 1) % 10;
      *(v45 + 10) = v47;
      v48 = mlx::core::scheduler::scheduler(v45);
      if (v47)
      {
        v49 = *(v48[1] + 8 * *v45);
        std::mutex::lock(v49);
        if (*(v49 + 160) != 1)
        {
          v50 = *(v49 + 72);
          v51 = *(v49 + 80);
          v52 = 16 * (v51 - v50) - 1;
          if (v51 == v50)
          {
            v52 = 0;
          }

          if (v52 == *(v49 + 104) + *(v49 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v49 + 64));
            v50 = *(v49 + 72);
            v51 = *(v49 + 80);
          }

          if (v51 == v50)
          {
            v54 = 0;
          }

          else
          {
            v53 = *(v49 + 104) + *(v49 + 96);
            v54 = *(v50 + ((v53 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v53 & 0x7F);
          }

          *(v54 + 24) = 0;
          operator new();
        }

        v275 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v275, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v275, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v48);
      v303 = *v45;
      v317 = *(v45 + 2);
      v190 = *(*(mlx::core::scheduler::scheduler(v189) + 1) + 8 * *v45);
      std::mutex::lock(v190);
      if (*(v190 + 160) != 1)
      {
        v191 = *(v190 + 72);
        v192 = *(v190 + 80);
        v193 = 16 * (v192 - v191) - 1;
        if (v192 == v191)
        {
          v193 = 0;
        }

        if (v193 == *(v190 + 104) + *(v190 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v190 + 64));
          v191 = *(v190 + 72);
          v192 = *(v190 + 80);
        }

        if (v192 == v191)
        {
          v195 = 0;
        }

        else
        {
          v194 = *(v190 + 104) + *(v190 + 96);
          v195 = *(v191 + ((v194 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v194 & 0x7F);
        }

        *(v195 + 24) = 0;
        operator new();
      }

      v289 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v289, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v289, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 0xD:
      v127 = *(*a2 + 152);
      v128 = *(v5 + 152);
      v129 = mlx::core::cpu::get_command_encoder(a4, a5);
      v130 = *(*a2 + 48);
      v131 = (*(v129 + 10) + 1) % 10;
      *(v129 + 10) = v131;
      v132 = mlx::core::scheduler::scheduler(v129);
      if (v131)
      {
        v133 = *(v132[1] + 8 * *v129);
        std::mutex::lock(v133);
        if (*(v133 + 160) != 1)
        {
          v134 = *(v133 + 72);
          v135 = *(v133 + 80);
          v136 = 16 * (v135 - v134) - 1;
          if (v135 == v134)
          {
            v136 = 0;
          }

          if (v136 == *(v133 + 104) + *(v133 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v133 + 64));
            v134 = *(v133 + 72);
            v135 = *(v133 + 80);
          }

          if (v135 == v134)
          {
            v138 = 0;
          }

          else
          {
            v137 = *(v133 + 104) + *(v133 + 96);
            v138 = *(v134 + ((v137 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v137 & 0x7F);
          }

          *(v138 + 24) = 0;
          operator new();
        }

        v283 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v283, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v283, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v132);
      v311 = *v129;
      v325 = *(v129 + 2);
      v246 = *(*(mlx::core::scheduler::scheduler(v245) + 1) + 8 * *v129);
      std::mutex::lock(v246);
      if (*(v246 + 160) != 1)
      {
        v247 = *(v246 + 72);
        v248 = *(v246 + 80);
        v249 = 16 * (v248 - v247) - 1;
        if (v248 == v247)
        {
          v249 = 0;
        }

        if (v249 == *(v246 + 104) + *(v246 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v246 + 64));
          v247 = *(v246 + 72);
          v248 = *(v246 + 80);
        }

        if (v248 == v247)
        {
          v251 = 0;
        }

        else
        {
          v250 = *(v246 + 104) + *(v246 + 96);
          v251 = *(v247 + ((v250 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v250 & 0x7F);
        }

        *(v251 + 24) = 0;
        operator new();
      }

      v297 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v297, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v297, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    default:
      return;
  }
}

void sub_25A2C6CC4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void mlx::core::distributed::ring::RingGroup::all_min(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  v5 = *a3;
  switch(*(*a3 + 56))
  {
    case 0:
      v7 = *(*a2 + 152);
      v8 = *(v5 + 152);
      command_encoder = mlx::core::cpu::get_command_encoder(a4, a5);
      v10 = *(*a2 + 48);
      v11 = (*(command_encoder + 10) + 1) % 10;
      *(command_encoder + 10) = v11;
      v12 = mlx::core::scheduler::scheduler(command_encoder);
      if (v11)
      {
        v13 = *(v12[1] + 8 * *command_encoder);
        std::mutex::lock(v13);
        if (*(v13 + 160) != 1)
        {
          v14 = *(v13 + 72);
          v15 = *(v13 + 80);
          v16 = 16 * (v15 - v14) - 1;
          if (v15 == v14)
          {
            v16 = 0;
          }

          if (v16 == *(v13 + 104) + *(v13 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v13 + 64));
            v14 = *(v13 + 72);
            v15 = *(v13 + 80);
          }

          if (v15 == v14)
          {
            v18 = 0;
          }

          else
          {
            v17 = *(v13 + 104) + *(v13 + 96);
            v18 = *(v14 + ((v17 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v17 & 0x7F);
          }

          *(v18 + 24) = 0;
          operator new();
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v12);
      v308 = *command_encoder;
      v322 = *(command_encoder + 2);
      v225 = *(*(mlx::core::scheduler::scheduler(v224) + 1) + 8 * *command_encoder);
      std::mutex::lock(v225);
      if (*(v225 + 160) != 1)
      {
        v226 = *(v225 + 72);
        v227 = *(v225 + 80);
        v228 = 16 * (v227 - v226) - 1;
        if (v227 == v226)
        {
          v228 = 0;
        }

        if (v228 == *(v225 + 104) + *(v225 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v225 + 64));
          v226 = *(v225 + 72);
          v227 = *(v225 + 80);
        }

        if (v227 == v226)
        {
          v230 = 0;
        }

        else
        {
          v229 = *(v225 + 104) + *(v225 + 96);
          v230 = *(v226 + ((v229 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v229 & 0x7F);
        }

        *(v230 + 24) = 0;
        operator new();
      }

      v294 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v294, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v294, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 1:
      v103 = *(*a2 + 152);
      v104 = *(v5 + 152);
      v105 = mlx::core::cpu::get_command_encoder(a4, a5);
      v106 = *(*a2 + 48);
      v107 = (*(v105 + 10) + 1) % 10;
      *(v105 + 10) = v107;
      v108 = mlx::core::scheduler::scheduler(v105);
      if (v107)
      {
        v109 = *(v108[1] + 8 * *v105);
        std::mutex::lock(v109);
        if (*(v109 + 160) != 1)
        {
          v110 = *(v109 + 72);
          v111 = *(v109 + 80);
          v112 = 16 * (v111 - v110) - 1;
          if (v111 == v110)
          {
            v112 = 0;
          }

          if (v112 == *(v109 + 104) + *(v109 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v109 + 64));
            v110 = *(v109 + 72);
            v111 = *(v109 + 80);
          }

          if (v111 == v110)
          {
            v114 = 0;
          }

          else
          {
            v113 = *(v109 + 104) + *(v109 + 96);
            v114 = *(v110 + ((v113 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v113 & 0x7F);
          }

          *(v114 + 24) = 0;
          operator new();
        }

        v281 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v281, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v281, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v108);
      v309 = *v105;
      v323 = *(v105 + 2);
      v232 = *(*(mlx::core::scheduler::scheduler(v231) + 1) + 8 * *v105);
      std::mutex::lock(v232);
      if (*(v232 + 160) != 1)
      {
        v233 = *(v232 + 72);
        v234 = *(v232 + 80);
        v235 = 16 * (v234 - v233) - 1;
        if (v234 == v233)
        {
          v235 = 0;
        }

        if (v235 == *(v232 + 104) + *(v232 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v232 + 64));
          v233 = *(v232 + 72);
          v234 = *(v232 + 80);
        }

        if (v234 == v233)
        {
          v237 = 0;
        }

        else
        {
          v236 = *(v232 + 104) + *(v232 + 96);
          v237 = *(v233 + ((v236 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v236 & 0x7F);
        }

        *(v237 + 24) = 0;
        operator new();
      }

      v295 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v295, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v295, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 2:
      v67 = *(*a2 + 152);
      v68 = *(v5 + 152);
      v69 = mlx::core::cpu::get_command_encoder(a4, a5);
      v70 = *(*a2 + 48);
      v71 = (*(v69 + 10) + 1) % 10;
      *(v69 + 10) = v71;
      v72 = mlx::core::scheduler::scheduler(v69);
      if (v71)
      {
        v73 = *(v72[1] + 8 * *v69);
        std::mutex::lock(v73);
        if (*(v73 + 160) != 1)
        {
          v74 = *(v73 + 72);
          v75 = *(v73 + 80);
          v76 = 16 * (v75 - v74) - 1;
          if (v75 == v74)
          {
            v76 = 0;
          }

          if (v76 == *(v73 + 104) + *(v73 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v73 + 64));
            v74 = *(v73 + 72);
            v75 = *(v73 + 80);
          }

          if (v75 == v74)
          {
            v78 = 0;
          }

          else
          {
            v77 = *(v73 + 104) + *(v73 + 96);
            v78 = *(v74 + ((v77 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v77 & 0x7F);
          }

          *(v78 + 24) = 0;
          operator new();
        }

        v277 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v277, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v277, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v72);
      v305 = *v69;
      v319 = *(v69 + 2);
      v204 = *(*(mlx::core::scheduler::scheduler(v203) + 1) + 8 * *v69);
      std::mutex::lock(v204);
      if (*(v204 + 160) != 1)
      {
        v205 = *(v204 + 72);
        v206 = *(v204 + 80);
        v207 = 16 * (v206 - v205) - 1;
        if (v206 == v205)
        {
          v207 = 0;
        }

        if (v207 == *(v204 + 104) + *(v204 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v204 + 64));
          v205 = *(v204 + 72);
          v206 = *(v204 + 80);
        }

        if (v206 == v205)
        {
          v209 = 0;
        }

        else
        {
          v208 = *(v204 + 104) + *(v204 + 96);
          v209 = *(v205 + ((v208 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v208 & 0x7F);
        }

        *(v209 + 24) = 0;
        operator new();
      }

      v291 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v291, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v291, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 3:
      v79 = *(*a2 + 152);
      v80 = *(v5 + 152);
      v81 = mlx::core::cpu::get_command_encoder(a4, a5);
      v82 = *(*a2 + 48);
      v83 = (*(v81 + 10) + 1) % 10;
      *(v81 + 10) = v83;
      v84 = mlx::core::scheduler::scheduler(v81);
      if (v83)
      {
        v85 = *(v84[1] + 8 * *v81);
        std::mutex::lock(v85);
        if (*(v85 + 160) != 1)
        {
          v86 = *(v85 + 72);
          v87 = *(v85 + 80);
          v88 = 16 * (v87 - v86) - 1;
          if (v87 == v86)
          {
            v88 = 0;
          }

          if (v88 == *(v85 + 104) + *(v85 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v85 + 64));
            v86 = *(v85 + 72);
            v87 = *(v85 + 80);
          }

          if (v87 == v86)
          {
            v90 = 0;
          }

          else
          {
            v89 = *(v85 + 104) + *(v85 + 96);
            v90 = *(v86 + ((v89 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v89 & 0x7F);
          }

          *(v90 + 24) = 0;
          operator new();
        }

        v278 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v278, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v278, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v84);
      v306 = *v81;
      v320 = *(v81 + 2);
      v211 = *(*(mlx::core::scheduler::scheduler(v210) + 1) + 8 * *v81);
      std::mutex::lock(v211);
      if (*(v211 + 160) != 1)
      {
        v212 = *(v211 + 72);
        v213 = *(v211 + 80);
        v214 = 16 * (v213 - v212) - 1;
        if (v213 == v212)
        {
          v214 = 0;
        }

        if (v214 == *(v211 + 104) + *(v211 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v211 + 64));
          v212 = *(v211 + 72);
          v213 = *(v211 + 80);
        }

        if (v213 == v212)
        {
          v216 = 0;
        }

        else
        {
          v215 = *(v211 + 104) + *(v211 + 96);
          v216 = *(v212 + ((v215 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v215 & 0x7F);
        }

        *(v216 + 24) = 0;
        operator new();
      }

      v292 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v292, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v292, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 4:
      v31 = *(*a2 + 152);
      v32 = *(v5 + 152);
      v33 = mlx::core::cpu::get_command_encoder(a4, a5);
      v34 = *(*a2 + 48);
      v35 = (*(v33 + 10) + 1) % 10;
      *(v33 + 10) = v35;
      v36 = mlx::core::scheduler::scheduler(v33);
      if (v35)
      {
        v37 = *(v36[1] + 8 * *v33);
        std::mutex::lock(v37);
        if (*(v37 + 160) != 1)
        {
          v38 = *(v37 + 72);
          v39 = *(v37 + 80);
          v40 = 16 * (v39 - v38) - 1;
          if (v39 == v38)
          {
            v40 = 0;
          }

          if (v40 == *(v37 + 104) + *(v37 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v37 + 64));
            v38 = *(v37 + 72);
            v39 = *(v37 + 80);
          }

          if (v39 == v38)
          {
            v42 = 0;
          }

          else
          {
            v41 = *(v37 + 104) + *(v37 + 96);
            v42 = *(v38 + ((v41 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v41 & 0x7F);
          }

          *(v42 + 24) = 0;
          operator new();
        }

        v274 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v274, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v274, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v36);
      v302 = *v33;
      v316 = *(v33 + 2);
      v183 = *(*(mlx::core::scheduler::scheduler(v182) + 1) + 8 * *v33);
      std::mutex::lock(v183);
      if (*(v183 + 160) != 1)
      {
        v184 = *(v183 + 72);
        v185 = *(v183 + 80);
        v186 = 16 * (v185 - v184) - 1;
        if (v185 == v184)
        {
          v186 = 0;
        }

        if (v186 == *(v183 + 104) + *(v183 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v183 + 64));
          v184 = *(v183 + 72);
          v185 = *(v183 + 80);
        }

        if (v185 == v184)
        {
          v188 = 0;
        }

        else
        {
          v187 = *(v183 + 104) + *(v183 + 96);
          v188 = *(v184 + ((v187 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v187 & 0x7F);
        }

        *(v188 + 24) = 0;
        operator new();
      }

      v288 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v288, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v288, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 5:
      v115 = *(*a2 + 152);
      v116 = *(v5 + 152);
      v117 = mlx::core::cpu::get_command_encoder(a4, a5);
      v118 = *(*a2 + 48);
      v119 = (*(v117 + 10) + 1) % 10;
      *(v117 + 10) = v119;
      v120 = mlx::core::scheduler::scheduler(v117);
      if (v119)
      {
        v121 = *(v120[1] + 8 * *v117);
        std::mutex::lock(v121);
        if (*(v121 + 160) != 1)
        {
          v122 = *(v121 + 72);
          v123 = *(v121 + 80);
          v124 = 16 * (v123 - v122) - 1;
          if (v123 == v122)
          {
            v124 = 0;
          }

          if (v124 == *(v121 + 104) + *(v121 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v121 + 64));
            v122 = *(v121 + 72);
            v123 = *(v121 + 80);
          }

          if (v123 == v122)
          {
            v126 = 0;
          }

          else
          {
            v125 = *(v121 + 104) + *(v121 + 96);
            v126 = *(v122 + ((v125 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v125 & 0x7F);
          }

          *(v126 + 24) = 0;
          operator new();
        }

        v282 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v282, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v282, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v120);
      v310 = *v117;
      v324 = *(v117 + 2);
      v239 = *(*(mlx::core::scheduler::scheduler(v238) + 1) + 8 * *v117);
      std::mutex::lock(v239);
      if (*(v239 + 160) != 1)
      {
        v240 = *(v239 + 72);
        v241 = *(v239 + 80);
        v242 = 16 * (v241 - v240) - 1;
        if (v241 == v240)
        {
          v242 = 0;
        }

        if (v242 == *(v239 + 104) + *(v239 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v239 + 64));
          v240 = *(v239 + 72);
          v241 = *(v239 + 80);
        }

        if (v241 == v240)
        {
          v244 = 0;
        }

        else
        {
          v243 = *(v239 + 104) + *(v239 + 96);
          v244 = *(v240 + ((v243 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v243 & 0x7F);
        }

        *(v244 + 24) = 0;
        operator new();
      }

      v296 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v296, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v296, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 6:
      v139 = *(*a2 + 152);
      v140 = *(v5 + 152);
      v141 = mlx::core::cpu::get_command_encoder(a4, a5);
      v142 = *(*a2 + 48);
      v143 = (*(v141 + 10) + 1) % 10;
      *(v141 + 10) = v143;
      v144 = mlx::core::scheduler::scheduler(v141);
      if (v143)
      {
        v145 = *(v144[1] + 8 * *v141);
        std::mutex::lock(v145);
        if (*(v145 + 160) != 1)
        {
          v146 = *(v145 + 72);
          v147 = *(v145 + 80);
          v148 = 16 * (v147 - v146) - 1;
          if (v147 == v146)
          {
            v148 = 0;
          }

          if (v148 == *(v145 + 104) + *(v145 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v145 + 64));
            v146 = *(v145 + 72);
            v147 = *(v145 + 80);
          }

          if (v147 == v146)
          {
            v150 = 0;
          }

          else
          {
            v149 = *(v145 + 104) + *(v145 + 96);
            v150 = *(v146 + ((v149 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v149 & 0x7F);
          }

          *(v150 + 24) = 0;
          operator new();
        }

        v284 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v284, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v284, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v144);
      v312 = *v141;
      v326 = *(v141 + 2);
      v253 = *(*(mlx::core::scheduler::scheduler(v252) + 1) + 8 * *v141);
      std::mutex::lock(v253);
      if (*(v253 + 160) != 1)
      {
        v254 = *(v253 + 72);
        v255 = *(v253 + 80);
        v256 = 16 * (v255 - v254) - 1;
        if (v255 == v254)
        {
          v256 = 0;
        }

        if (v256 == *(v253 + 104) + *(v253 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v253 + 64));
          v254 = *(v253 + 72);
          v255 = *(v253 + 80);
        }

        if (v255 == v254)
        {
          v258 = 0;
        }

        else
        {
          v257 = *(v253 + 104) + *(v253 + 96);
          v258 = *(v254 + ((v257 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v257 & 0x7F);
        }

        *(v258 + 24) = 0;
        operator new();
      }

      v298 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v298, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v298, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 7:
      v91 = *(*a2 + 152);
      v92 = *(v5 + 152);
      v93 = mlx::core::cpu::get_command_encoder(a4, a5);
      v94 = *(*a2 + 48);
      v95 = (*(v93 + 10) + 1) % 10;
      *(v93 + 10) = v95;
      v96 = mlx::core::scheduler::scheduler(v93);
      if (v95)
      {
        v97 = *(v96[1] + 8 * *v93);
        std::mutex::lock(v97);
        if (*(v97 + 160) != 1)
        {
          v98 = *(v97 + 72);
          v99 = *(v97 + 80);
          v100 = 16 * (v99 - v98) - 1;
          if (v99 == v98)
          {
            v100 = 0;
          }

          if (v100 == *(v97 + 104) + *(v97 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v97 + 64));
            v98 = *(v97 + 72);
            v99 = *(v97 + 80);
          }

          if (v99 == v98)
          {
            v102 = 0;
          }

          else
          {
            v101 = *(v97 + 104) + *(v97 + 96);
            v102 = *(v98 + ((v101 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v101 & 0x7F);
          }

          *(v102 + 24) = 0;
          operator new();
        }

        v280 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v280, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v280, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v96);
      v307 = *v93;
      v321 = *(v93 + 2);
      v218 = *(*(mlx::core::scheduler::scheduler(v217) + 1) + 8 * *v93);
      std::mutex::lock(v218);
      if (*(v218 + 160) != 1)
      {
        v219 = *(v218 + 72);
        v220 = *(v218 + 80);
        v221 = 16 * (v220 - v219) - 1;
        if (v220 == v219)
        {
          v221 = 0;
        }

        if (v221 == *(v218 + 104) + *(v218 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v218 + 64));
          v219 = *(v218 + 72);
          v220 = *(v218 + 80);
        }

        if (v220 == v219)
        {
          v223 = 0;
        }

        else
        {
          v222 = *(v218 + 104) + *(v218 + 96);
          v223 = *(v219 + ((v222 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v222 & 0x7F);
        }

        *(v223 + 24) = 0;
        operator new();
      }

      v293 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v293, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v293, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 8:
      v163 = *(*a2 + 152);
      v164 = *(v5 + 152);
      v165 = mlx::core::cpu::get_command_encoder(a4, a5);
      v166 = *(*a2 + 48);
      v167 = (*(v165 + 10) + 1) % 10;
      *(v165 + 10) = v167;
      v168 = mlx::core::scheduler::scheduler(v165);
      if (v167)
      {
        v169 = *(v168[1] + 8 * *v165);
        std::mutex::lock(v169);
        if (*(v169 + 160) != 1)
        {
          v170 = *(v169 + 72);
          v171 = *(v169 + 80);
          v172 = 16 * (v171 - v170) - 1;
          if (v171 == v170)
          {
            v172 = 0;
          }

          if (v172 == *(v169 + 104) + *(v169 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v169 + 64));
            v170 = *(v169 + 72);
            v171 = *(v169 + 80);
          }

          if (v171 == v170)
          {
            v174 = 0;
          }

          else
          {
            v173 = *(v169 + 104) + *(v169 + 96);
            v174 = *(v170 + ((v173 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v173 & 0x7F);
          }

          *(v174 + 24) = 0;
          operator new();
        }

        v286 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v286, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v286, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v168);
      v314 = *v165;
      v328 = *(v165 + 2);
      v267 = *(*(mlx::core::scheduler::scheduler(v266) + 1) + 8 * *v165);
      std::mutex::lock(v267);
      if (*(v267 + 160) != 1)
      {
        v268 = *(v267 + 72);
        v269 = *(v267 + 80);
        v270 = 16 * (v269 - v268) - 1;
        if (v269 == v268)
        {
          v270 = 0;
        }

        if (v270 == *(v267 + 104) + *(v267 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v267 + 64));
          v268 = *(v267 + 72);
          v269 = *(v267 + 80);
        }

        if (v269 == v268)
        {
          v272 = 0;
        }

        else
        {
          v271 = *(v267 + 104) + *(v267 + 96);
          v272 = *(v268 + ((v271 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v271 & 0x7F);
        }

        *(v272 + 24) = 0;
        operator new();
      }

      v300 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v300, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v300, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 9:
      v55 = *(*a2 + 152);
      v56 = *(v5 + 152);
      v57 = mlx::core::cpu::get_command_encoder(a4, a5);
      v58 = *(*a2 + 48);
      v59 = (*(v57 + 10) + 1) % 10;
      *(v57 + 10) = v59;
      v60 = mlx::core::scheduler::scheduler(v57);
      if (v59)
      {
        v61 = *(v60[1] + 8 * *v57);
        std::mutex::lock(v61);
        if (*(v61 + 160) != 1)
        {
          v62 = *(v61 + 72);
          v63 = *(v61 + 80);
          v64 = 16 * (v63 - v62) - 1;
          if (v63 == v62)
          {
            v64 = 0;
          }

          if (v64 == *(v61 + 104) + *(v61 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v61 + 64));
            v62 = *(v61 + 72);
            v63 = *(v61 + 80);
          }

          if (v63 == v62)
          {
            v66 = 0;
          }

          else
          {
            v65 = *(v61 + 104) + *(v61 + 96);
            v66 = *(v62 + ((v65 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v65 & 0x7F);
          }

          *(v66 + 24) = 0;
          operator new();
        }

        v276 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v276, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v276, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v60);
      v304 = *v57;
      v318 = *(v57 + 2);
      v197 = *(*(mlx::core::scheduler::scheduler(v196) + 1) + 8 * *v57);
      std::mutex::lock(v197);
      if (*(v197 + 160) != 1)
      {
        v198 = *(v197 + 72);
        v199 = *(v197 + 80);
        v200 = 16 * (v199 - v198) - 1;
        if (v199 == v198)
        {
          v200 = 0;
        }

        if (v200 == *(v197 + 104) + *(v197 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v197 + 64));
          v198 = *(v197 + 72);
          v199 = *(v197 + 80);
        }

        if (v199 == v198)
        {
          v202 = 0;
        }

        else
        {
          v201 = *(v197 + 104) + *(v197 + 96);
          v202 = *(v198 + ((v201 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v201 & 0x7F);
        }

        *(v202 + 24) = 0;
        operator new();
      }

      v290 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v290, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v290, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 0xA:
      v151 = *(*a2 + 152);
      v152 = *(v5 + 152);
      v153 = mlx::core::cpu::get_command_encoder(a4, a5);
      v154 = *(*a2 + 48);
      v155 = (*(v153 + 10) + 1) % 10;
      *(v153 + 10) = v155;
      v156 = mlx::core::scheduler::scheduler(v153);
      if (v155)
      {
        v157 = *(v156[1] + 8 * *v153);
        std::mutex::lock(v157);
        if (*(v157 + 160) != 1)
        {
          v158 = *(v157 + 72);
          v159 = *(v157 + 80);
          v160 = 16 * (v159 - v158) - 1;
          if (v159 == v158)
          {
            v160 = 0;
          }

          if (v160 == *(v157 + 104) + *(v157 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v157 + 64));
            v158 = *(v157 + 72);
            v159 = *(v157 + 80);
          }

          if (v159 == v158)
          {
            v162 = 0;
          }

          else
          {
            v161 = *(v157 + 104) + *(v157 + 96);
            v162 = *(v158 + ((v161 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v161 & 0x7F);
          }

          *(v162 + 24) = 0;
          operator new();
        }

        v285 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v285, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v285, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v156);
      v313 = *v153;
      v327 = *(v153 + 2);
      v260 = *(*(mlx::core::scheduler::scheduler(v259) + 1) + 8 * *v153);
      std::mutex::lock(v260);
      if (*(v260 + 160) != 1)
      {
        v261 = *(v260 + 72);
        v262 = *(v260 + 80);
        v263 = 16 * (v262 - v261) - 1;
        if (v262 == v261)
        {
          v263 = 0;
        }

        if (v263 == *(v260 + 104) + *(v260 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v260 + 64));
          v261 = *(v260 + 72);
          v262 = *(v260 + 80);
        }

        if (v262 == v261)
        {
          v265 = 0;
        }

        else
        {
          v264 = *(v260 + 104) + *(v260 + 96);
          v265 = *(v261 + ((v264 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v264 & 0x7F);
        }

        *(v265 + 24) = 0;
        operator new();
      }

      v299 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v299, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v299, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 0xB:
      v19 = *(*a2 + 152);
      v20 = *(v5 + 152);
      v21 = mlx::core::cpu::get_command_encoder(a4, a5);
      v22 = *(*a2 + 48);
      v23 = (*(v21 + 10) + 1) % 10;
      *(v21 + 10) = v23;
      v24 = mlx::core::scheduler::scheduler(v21);
      if (v23)
      {
        v25 = *(v24[1] + 8 * *v21);
        std::mutex::lock(v25);
        if (*(v25 + 160) != 1)
        {
          v26 = *(v25 + 72);
          v27 = *(v25 + 80);
          v28 = 16 * (v27 - v26) - 1;
          if (v27 == v26)
          {
            v28 = 0;
          }

          if (v28 == *(v25 + 104) + *(v25 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v25 + 64));
            v26 = *(v25 + 72);
            v27 = *(v25 + 80);
          }

          if (v27 == v26)
          {
            v30 = 0;
          }

          else
          {
            v29 = *(v25 + 104) + *(v25 + 96);
            v30 = *(v26 + ((v29 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v29 & 0x7F);
          }

          *(v30 + 24) = 0;
          operator new();
        }

        v273 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v273, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v273, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v24);
      v301 = *v21;
      v315 = *(v21 + 2);
      v176 = *(*(mlx::core::scheduler::scheduler(v175) + 1) + 8 * *v21);
      std::mutex::lock(v176);
      if (*(v176 + 160) != 1)
      {
        v177 = *(v176 + 72);
        v178 = *(v176 + 80);
        v179 = 16 * (v178 - v177) - 1;
        if (v178 == v177)
        {
          v179 = 0;
        }

        if (v179 == *(v176 + 104) + *(v176 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v176 + 64));
          v177 = *(v176 + 72);
          v178 = *(v176 + 80);
        }

        if (v178 == v177)
        {
          v181 = 0;
        }

        else
        {
          v180 = *(v176 + 104) + *(v176 + 96);
          v181 = *(v177 + ((v180 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v180 & 0x7F);
        }

        *(v181 + 24) = 0;
        operator new();
      }

      v287 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v287, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v287, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 0xC:
      v43 = *(*a2 + 152);
      v44 = *(v5 + 152);
      v45 = mlx::core::cpu::get_command_encoder(a4, a5);
      v46 = *(*a2 + 48);
      v47 = (*(v45 + 10) + 1) % 10;
      *(v45 + 10) = v47;
      v48 = mlx::core::scheduler::scheduler(v45);
      if (v47)
      {
        v49 = *(v48[1] + 8 * *v45);
        std::mutex::lock(v49);
        if (*(v49 + 160) != 1)
        {
          v50 = *(v49 + 72);
          v51 = *(v49 + 80);
          v52 = 16 * (v51 - v50) - 1;
          if (v51 == v50)
          {
            v52 = 0;
          }

          if (v52 == *(v49 + 104) + *(v49 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v49 + 64));
            v50 = *(v49 + 72);
            v51 = *(v49 + 80);
          }

          if (v51 == v50)
          {
            v54 = 0;
          }

          else
          {
            v53 = *(v49 + 104) + *(v49 + 96);
            v54 = *(v50 + ((v53 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v53 & 0x7F);
          }

          *(v54 + 24) = 0;
          operator new();
        }

        v275 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v275, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v275, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v48);
      v303 = *v45;
      v317 = *(v45 + 2);
      v190 = *(*(mlx::core::scheduler::scheduler(v189) + 1) + 8 * *v45);
      std::mutex::lock(v190);
      if (*(v190 + 160) != 1)
      {
        v191 = *(v190 + 72);
        v192 = *(v190 + 80);
        v193 = 16 * (v192 - v191) - 1;
        if (v192 == v191)
        {
          v193 = 0;
        }

        if (v193 == *(v190 + 104) + *(v190 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v190 + 64));
          v191 = *(v190 + 72);
          v192 = *(v190 + 80);
        }

        if (v192 == v191)
        {
          v195 = 0;
        }

        else
        {
          v194 = *(v190 + 104) + *(v190 + 96);
          v195 = *(v191 + ((v194 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v194 & 0x7F);
        }

        *(v195 + 24) = 0;
        operator new();
      }

      v289 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v289, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v289, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    case 0xD:
      v127 = *(*a2 + 152);
      v128 = *(v5 + 152);
      v129 = mlx::core::cpu::get_command_encoder(a4, a5);
      v130 = *(*a2 + 48);
      v131 = (*(v129 + 10) + 1) % 10;
      *(v129 + 10) = v131;
      v132 = mlx::core::scheduler::scheduler(v129);
      if (v131)
      {
        v133 = *(v132[1] + 8 * *v129);
        std::mutex::lock(v133);
        if (*(v133 + 160) != 1)
        {
          v134 = *(v133 + 72);
          v135 = *(v133 + 80);
          v136 = 16 * (v135 - v134) - 1;
          if (v135 == v134)
          {
            v136 = 0;
          }

          if (v136 == *(v133 + 104) + *(v133 + 96))
          {
            std::deque<std::function<void ()(void)>>::__add_back_capacity((v133 + 64));
            v134 = *(v133 + 72);
            v135 = *(v133 + 80);
          }

          if (v135 == v134)
          {
            v138 = 0;
          }

          else
          {
            v137 = *(v133 + 104) + *(v133 + 96);
            v138 = *(v134 + ((v137 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v137 & 0x7F);
          }

          *(v138 + 24) = 0;
          operator new();
        }

        v283 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v283, "Cannot enqueue work after stream is stopped.");
        __cxa_throw(v283, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      mlx::core::scheduler::Scheduler::notify_new_task(v132);
      v311 = *v129;
      v325 = *(v129 + 2);
      v246 = *(*(mlx::core::scheduler::scheduler(v245) + 1) + 8 * *v129);
      std::mutex::lock(v246);
      if (*(v246 + 160) != 1)
      {
        v247 = *(v246 + 72);
        v248 = *(v246 + 80);
        v249 = 16 * (v248 - v247) - 1;
        if (v248 == v247)
        {
          v249 = 0;
        }

        if (v249 == *(v246 + 104) + *(v246 + 96))
        {
          std::deque<std::function<void ()(void)>>::__add_back_capacity((v246 + 64));
          v247 = *(v246 + 72);
          v248 = *(v246 + 80);
        }

        if (v248 == v247)
        {
          v251 = 0;
        }

        else
        {
          v250 = *(v246 + 104) + *(v246 + 96);
          v251 = *(v247 + ((v250 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v250 & 0x7F);
        }

        *(v251 + 24) = 0;
        operator new();
      }

      v297 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v297, "Cannot enqueue work after stream is stopped.");
      __cxa_throw(v297, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    default:
      return;
  }
}

void sub_25A2C8FB0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void *ThreadPool::start_threads(void *this, uint64_t a2)
{
  if (a2)
  {
    v2 = this[1];
    v3 = this[2];
    if (v2 < v3)
    {
      _ZNSt3__16threadC2IZN10ThreadPool13start_threadsEmEUlvE_JELi0EEEOT_DpOT0_();
    }

    v4 = (v2 - *this) >> 3;
    if (!((v4 + 1) >> 61))
    {
      v5 = v3 - *this;
      v6 = v5 >> 2;
      if (v5 >> 2 <= (v4 + 1))
      {
        v6 = v4 + 1;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        v7 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = v6;
      }

      if (v7)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::function<void ()(void)> *>>(this, v7);
      }

      _ZNSt3__16threadC2IZN10ThreadPool13start_threadsEmEUlvE_JELi0EEEOT_DpOT0_();
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return this;
}

void sub_25A2C92DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,ThreadPool::start_threads(unsigned long)::{lambda(void)#1}>>(uint64_t *a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  ThreadPool::start_threads(unsigned long)::{lambda(void)#1}::operator()(v5 + 1);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,ThreadPool::start_threads(unsigned long)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v5);
  return 0;
}

void sub_25A2C936C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,ThreadPool::start_threads(unsigned long)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,ThreadPool::start_threads(unsigned long)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x25F851760](v3, 0x20C40A4A59CD2);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x25F851420]();
    MEMORY[0x25F851760](v3, 0x20C4093837F09);
  }

  return a1;
}

uint64_t ThreadPool::start_threads(unsigned long)::{lambda(void)#1}::operator()(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = (*a1 + 72);
  while (1)
  {
    v9 = 0;
    __lk.__m_ = v2;
    __lk.__owns_ = 1;
    std::mutex::lock(v2);
    v3 = *(v1 + 184);
    if (v3)
    {
LABEL_3:
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (*(v1 + 64))
      {
        goto LABEL_7;
      }

      while (1)
      {
        std::condition_variable::wait((v1 + 136), &__lk);
        v3 = *(v1 + 184);
        if (v3)
        {
          break;
        }

        if (*(v1 + 64))
        {
          goto LABEL_3;
        }
      }
    }

    if (!*(v1 + 64))
    {
      v4 = 0;
      goto LABEL_8;
    }

LABEL_7:
    std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v8, *(*(v1 + 32) + ((*(v1 + 56) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(v1 + 56) & 0x7FLL));
    std::deque<std::function<void ()(void)>>::pop_front((v1 + 24));
    v4 = 1;
LABEL_8:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (!v4)
    {
      break;
    }

    if (!v9)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v9 + 48))(v9);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v8);
  }

  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2C955C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  if (a11 == 1)
  {
    std::mutex::unlock(a10);
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::deque<std::function<void ()(void)>>::pop_front(int64x2_t *a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](*(a1->i64[1] + ((a1[2].i64[0] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (a1[2].i64[0] & 0x7F));
  a1[2] = vaddq_s64(a1[2], xmmword_25A9A7F20);

  return std::deque<std::function<void ()(void)>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<std::function<void ()(void)>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x80)
  {
    a2 = 1;
  }

  if (v2 < 0x100)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 128;
  }

  return v4 ^ 1u;
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

std::thread *std::vector<std::thread>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9++ = v8->__t_;
      v8->__t_ = 0;
      ++v8;
    }

    while (v8 != v5);
    do
    {
      std::thread::~thread(result);
      result = v10 + 1;
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<std::thread>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::thread::~thread((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::deque<std::function<void ()(void)>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 7];
    v7 = *v6 + 32 * (v5 & 0x7F);
    v8 = *(v2 + (((a1[5] + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v5) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v7 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7) + 32;
        if (v7 - *v6 == 4096)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 64;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 128;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<std::pair<std::reference_wrapper<mlx::core::array>,int> *,std::allocator<std::pair<std::reference_wrapper<mlx::core::array>,int> *>>::~__split_buffer(a1);
}

void std::vector<std::thread>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        std::thread::~thread(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t mlx::core::distributed::ring::anonymous namespace::log<char const*,int,char const*>(void *a1, char *__s, uint64_t a3, char *a4)
{
  v8 = strlen(__s);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " ", 1);
  v11 = MEMORY[0x25F851360](v10, a3);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ", 1);
}

uint64_t mlx::core::distributed::ring::anonymous namespace::log<char const*>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v4);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v8);
  std::ostream::put();
  return std::ostream::flush();
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void ThreadPool::stop_and_wait(ThreadPool *this)
{
  std::mutex::lock((this + 72));
  *(this + 184) = 1;
  std::mutex::unlock((this + 72));
  std::condition_variable::notify_all((this + 136));
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    do
    {
      std::thread::join(v2++);
    }

    while (v2 != v3);
    v2 = *this;
    v3 = *(this + 1);
  }

  *(this + 184) = 0;
  while (v3 != v2)
  {
    std::thread::~thread(--v3);
  }

  *(this + 1) = v2;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<int,mlx::core::distributed::ring::anonymous namespace::SocketThread>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,mlx::core::distributed::ring::anonymous namespace::SocketThread>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void mlx::core::distributed::ring::anonymous namespace::SocketThread::worker(mlx::core::distributed::ring::_anonymous_namespace_::SocketThread *this)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = (this + 16);
  while (1)
  {
    v19.__m_ = v5;
    v19.__owns_ = 1;
    std::mutex::lock(v5);
    if (v3)
    {
      std::promise<void>::set_value((*(this + 20) + 32));
    }

    if (v2)
    {
      std::promise<void>::set_value((*(this + 17) + 32));
    }

    if (*(this + 4))
    {
      break;
    }

    if (!*(this + 18) && !*(this + 21))
    {
      v6 = *(this + 18);
      if (!v6)
      {
        do
        {
          if (*(this + 21))
          {
            break;
          }

          std::condition_variable::wait((this + 80), &v19);
          LOBYTE(v6) = *(this + 4);
          if (v6)
          {
            goto LABEL_30;
          }
        }

        while (!*(this + 18));
        if (v6)
        {
          break;
        }
      }
    }

    if (v19.__owns_)
    {
      std::mutex::unlock(v19.__m_);
    }

    if (*(this + 21))
    {
      v7 = *(this + 20);
      v8 = recv(*this, *(v7 + 16), *(v7 + 24), 0);
      if (v8 >= 1)
      {
        v4 = 0;
        v9 = *(v7 + 24) - v8;
        *(v7 + 16) += v8;
        *(v7 + 24) = v9;
        v3 = v9 == 0;
        goto LABEL_22;
      }

      if (*__error() != 35)
      {
        ++v4;
        v10 = *this;
        v11 = __error();
      }
    }

    v3 = 0;
LABEL_22:
    if (!*(this + 18))
    {
      goto LABEL_27;
    }

    v12 = *(this + 17);
    v13 = send(*this, *(v12 + 16), *(v12 + 24), 0);
    if (v13 < 1)
    {
      if (*__error() != 35)
      {
        ++v4;
        v15 = *this;
        v16 = __error();
      }

LABEL_27:
      v2 = 0;
      goto LABEL_28;
    }

    v4 = 0;
    v14 = *(v12 + 24) - v13;
    *(v12 + 16) += v13;
    *(v12 + 24) = v14;
    v2 = v14 == 0;
LABEL_28:
    if (v4 >= 10)
    {
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "[ring]", 6);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " ", 1);
      return;
    }
  }

LABEL_30:
  if (v19.__owns_)
  {
    std::mutex::unlock(v19.__m_);
  }
}

void sub_25A2C9FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::list<mlx::core::distributed::ring::anonymous namespace::SocketThread::SocketTask>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        MEMORY[0x25F851680](v2 + 4);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void std::list<mlx::core::distributed::ring::anonymous namespace::SocketThread::SocketTask>::pop_front(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v4 = *v2;
  v3 = v2[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  *(a1 + 16) = v1 - 1;
  MEMORY[0x25F851680](v2 + 4);

  operator delete(v2);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (mlx::core::distributed::ring::anonymous namespace::SocketThread::*)(void),mlx::core::distributed::ring::anonymous namespace::SocketThread*>>(uint64_t *a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v8[1];
  v5 = v8[2];
  v6 = (v8[3] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  return 0;
}

void sub_25A2CA140(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (mlx::core::distributed::ring::anonymous namespace::SocketThread::*)(void),mlx::core::distributed::ring::anonymous namespace::SocketThread*>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x25F851760](v3, 0xA0C40F20CD8FBLL);
  }

  return a1;
}

void std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<int,mlx::core::distributed::ring::anonymous namespace::SocketThread>,void *>>>::destroy[abi:ne200100]<std::pair<int const,mlx::core::distributed::ring::anonymous namespace::SocketThread>,void,0>(uint64_t a1)
{
  *(a1 + 12) = 1;
  std::condition_variable::notify_all((a1 + 88));
  std::thread::join((a1 + 16));
  v2 = fcntl(*(a1 + 8), 3, 0);
  fcntl(*(a1 + 8), 4, v2 & 0xFFFFFFFB);
  if (*(a1 + 176))
  {
    v3 = *(a1 + 168);
    v4 = *(*(a1 + 160) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(a1 + 176) = 0;
    if (v3 != (a1 + 160))
    {
      do
      {
        v6 = v3[1];
        MEMORY[0x25F851680](v3 + 4);
        operator delete(v3);
        v3 = v6;
      }

      while (v6 != (a1 + 160));
    }
  }

  if (*(a1 + 152))
  {
    v7 = *(a1 + 144);
    v8 = *(*(a1 + 136) + 8);
    v9 = *v7;
    *(v9 + 8) = v8;
    *v8 = v9;
    *(a1 + 152) = 0;
    if (v7 != (a1 + 136))
    {
      do
      {
        v10 = v7[1];
        MEMORY[0x25F851680](v7 + 4);
        operator delete(v7);
        v7 = v10;
      }

      while (v10 != (a1 + 136));
    }
  }

  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));

  std::thread::~thread((a1 + 16));
}

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      bzero(this->__end_, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = (end - this->__begin_);
    v8 = &v7[__n];
    if (&v7[__n] < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = end - this->__begin_;
    bzero(v7, __n);
    memcpy(&v7[begin - end], begin, v11);
    this->__begin_ = &v7[begin - end];
    this->__end_ = &v7[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void ThreadPool::~ThreadPool(ThreadPool *this)
{
  ThreadPool::stop_and_wait(this);
  std::condition_variable::~condition_variable((this + 136));
  std::mutex::~mutex((this + 72));
  std::deque<std::function<void ()(void)>>::~deque[abi:ne200100](this + 3);
  v2 = this;
  std::vector<std::thread>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  std::mutex::lock((this + 72));
  *(this + 184) = 1;
  std::mutex::unlock((this + 72));
  std::condition_variable::notify_all((this + 136));
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    do
    {
      std::thread::join(v2++);
    }

    while (v2 != v3);
    v2 = *this;
    v3 = *(this + 1);
  }

  *(this + 184) = 0;
  while (v3 != v2)
  {
    std::thread::~thread(--v3);
  }

  *(this + 1) = v2;
  std::condition_variable::~condition_variable((this + 136));
  std::mutex::~mutex((this + 72));
  std::deque<std::function<void ()(void)>>::~deque[abi:ne200100](this + 3);
  v4 = this;
  std::vector<std::thread>::__destroy_vector::operator()[abi:ne200100](&v4);
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIbNS8_12_GLOBAL__N_15SumOpIbEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEAD98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIbNS8_12_GLOBAL__N_15SumOpIbEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIbNS8_12_GLOBAL__N_15SumOpIbEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<BOOL,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(v3 + 12);
  if (v2 >= v4)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 == v6)
    {
      v8 = v2;
    }

    else
    {
      memcpy(v6, v7, v2);
      v4 = *(v3 + 12);
      v8 = *(a1 + 16);
    }

    v9 = ((*(v3 + 288) - *(v3 + 280)) >> 2) + ((*(v3 + 264) - *(v3 + 256)) >> 2);
    if (v2 / (v4 << 18) < v9)
    {
      v9 = v2 / (v4 << 18);
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    memset(v21, 0, sizeof(v21));
    v10 = *(v3 + 304);
    v11 = v3;
    v12 = *(a1 + 8);
    if ((v8 + v9 - 1) / v9 >= *(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v14 = **(v11 + 256);
    v15 = **(v11 + 280);
    operator new();
  }

  if (v4 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v18 = MEMORY[0x25F851380](v17, *(a1 + 16));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v19, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v21);
    MEMORY[0x25F851100](exception, v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, *(v3 + 12));
  memcpy(__dst, *a1, v2);
  result = memcpy(*(a1 + 8), __dst, v2);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2CAC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<BOOL,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v118[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v93 = v8;
  v94 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >> 24)
  {
    v13 = 0x800000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v113 = 0;
  v114 = 0;
  __p = 0;
  v110 = 0;
  v111 = 0;
  v16 = 1;
  v107 = v13;
  v105 = v14 / v13;
  v100 = a7;
  v98 = (a4 + v10 - 1) / v10;
  v99 = a4;
  v97 = v14;
  do
  {
    v96 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v107 <= v14)
        {
          v102 = v17;
          v20 = 0;
          v103 = v15;
          v104 = v9;
          v106 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v107;
            v23 = v20 * v107 + v106;
            v24 = ++v20 * v107;
            v25 = v20 * v107 + v106;
            v26 = v113;
            if (v113 >= v114)
            {
              v30 = __src;
              v31 = v113 - __src;
              v32 = (v113 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v114 - __src;
              if ((v114 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v113 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v107 + v106;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v113 = v29;
              v114 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v107 + v106;
              }

              else
              {
                v28 = v18;
              }

              *v113 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v113 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v110;
            if (v110 >= v111)
            {
              v47 = __p;
              v48 = v110 - __p;
              v49 = (v110 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v111 - __p;
              if ((v111 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v110 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v110 = v46;
              v111 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v110 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v110 = v46;
          }

          while (v20 < v105);
          LODWORD(v10) = *(a1 + 12);
          a7 = v100;
          v11 = v98;
          a4 = v99;
          v15 = v103;
          v9 = v104;
          v14 = v97;
          v17 = v102;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v96 & 1) != 0);
  v118[0] = a2;
  v118[1] = a2 + v107;
  v117[0] = 0;
  v117[1] = 0;
  v116[0] = 0;
  v116[1] = 0;
  v58 = __src;
  if (v113 == __src)
  {
    v69 = v105 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v105 > 1;
    if (v105 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v115.__state_) = v94;
      state = v108.__state_;
      v108.__state_ = 0;
      v69 = v63;
      v115.__state_ = v117[v63];
      v117[v63] = state;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v113 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v115.__state_) = v93;
      }

      else
      {
        v70 = v118[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v115.__state_) = v93;
      }

      v79 = v108.__state_;
      v108.__state_ = 0;
      v115.__state_ = v116[v63];
      v116[v63] = v79;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v113 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v117[v60]);
        std::__assoc_sub_state::wait(v116[v60]);
        v58 = __src;
        v80 = (v113 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + v82);
            v85 = v118[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84++ |= v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v117[v69]);
  std::__assoc_sub_state::wait(v116[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v116[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v117[j]);
  }

  if (__p)
  {
    v110 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v113 = __src;
    operator delete(__src);
  }

  v91 = *MEMORY[0x277D85DE8];
}

void sub_25A2CB388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::unordered_map<int,mlx::core::distributed::ring::anonymous namespace::SocketThread>::at(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_17;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_17:
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v3)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_17;
    }

LABEL_16:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  if (*(v7 + 4) != v3)
  {
    goto LABEL_16;
  }

  return v7 + 3;
}

uint64_t mlx::core::distributed::ring::anonymous namespace::SocketThread::send_impl(mlx::core::distributed::ring::_anonymous_namespace_::SocketThread *this, const char *a2, uint64_t a3)
{
  std::promise<void>::promise(&v6);
  std::promise<void>::get_future(&v6);
  if (a3)
  {
    std::mutex::lock((this + 16));
    v6.__state_ = 0;
    operator new();
  }

  std::promise<void>::set_value(&v6);
  return MEMORY[0x25F851680](&v6);
}

void sub_25A2CB608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::future<void>::~future(v12);
  MEMORY[0x25F851680](&a12);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::distributed::ring::anonymous namespace::SocketThread::recv_impl(mlx::core::distributed::ring::_anonymous_namespace_::SocketThread *this, char *a2, uint64_t a3)
{
  std::promise<void>::promise(&v6);
  std::promise<void>::get_future(&v6);
  if (a3)
  {
    std::mutex::lock((this + 16));
    v6.__state_ = 0;
    operator new();
  }

  std::promise<void>::set_value(&v6);
  return MEMORY[0x25F851680](&v6);
}

void sub_25A2CB72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::future<void>::~future(v12);
  MEMORY[0x25F851680](&a12);
  _Unwind_Resume(a1);
}

std::future<void> *std::vector<std::future<void>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9++ = v8->__state_;
      v8->__state_ = 0;
      ++v8;
    }

    while (v8 != v5);
    do
    {
      std::future<void>::~future(result);
      result = v10 + 1;
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<std::future<void>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::future<void>::~future((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<std::packaged_task<void ()(void)>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BEAE08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

void *std::__shared_ptr_emplace<std::packaged_task<void ()(void)>>::__on_zero_shared(uint64_t a1)
{
  MEMORY[0x25F851680](a1 + 56);

  return std::__packaged_task_function<void ()(void)>::~__packaged_task_function((a1 + 24));
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(BOOL *,BOOL *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>),mlx::core::distributed::ring::RingGroup*,BOOL *,BOOL *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(BOOL *,BOOL *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>),mlx::core::distributed::ring::RingGroup*,BOOL *,BOOL *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEAE58;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(BOOL *,BOOL *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>),mlx::core::distributed::ring::RingGroup*,BOOL *,BOOL *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(BOOL *,BOOL *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>),mlx::core::distributed::ring::RingGroup*,BOOL *,BOOL *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *std::__packaged_task_function<void ()(void)>::~__packaged_task_function(void *a1)
{
  v2 = a1[3];
  if (v2 == a1)
  {
    v3 = (*v2 + 24);
    goto LABEL_5;
  }

  if (v2)
  {
    v3 = (*v2 + 32);
LABEL_5:
    (*v3)();
  }

  return a1;
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15SumOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEAEC0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15SumOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEAEC0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15SumOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEAEC0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15SumOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15SumOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbSA_miiiNS8_12_GLOBAL__N_15SumOpIbEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPbS8_miiiNS6_12_GLOBAL__N_15SumOpIbEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::packaged_task<void ()(void)>::operator()(std::promise<void> *a1)
{
  v2 = a1 + 4;
  state = a1[4].__state_;
  if (!state)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  if ((state->__state_ & 1) != 0 || (v5.__ptr_ = 0, ptr = state->__exception_.__ptr_, std::exception_ptr::~exception_ptr(&v5), ptr))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  (a1[3].__state_->__vftable[1].~__assoc_sub_state_0)(a1[3].__state_);
  std::promise<void>::set_value(v2);
}

void sub_25A2CBD20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  __cxa_begin_catch(a1);
  std::current_exception();
  v10.__ptr_ = &a9;
  std::promise<void>::set_exception(v9, v10);
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  JUMPOUT(0x25A2CBCFCLL);
}

void sub_25A2CBD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception_ptr a9)
{
  std::exception_ptr::~exception_ptr(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x25F851250](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x277D82710], MEMORY[0x277D82648]);
}

void std::vector<std::future<void>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        std::future<void>::~future(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<BOOL,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<BOOL,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEAF50;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<BOOL,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<BOOL,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<BOOL>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIaNS8_12_GLOBAL__N_15SumOpIaEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB048;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIaNS8_12_GLOBAL__N_15SumOpIaEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIaNS8_12_GLOBAL__N_15SumOpIaEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<signed char,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(v3 + 12);
  if (v2 >= v4)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 == v6)
    {
      v8 = v2;
    }

    else
    {
      memcpy(v6, v7, v2);
      v4 = *(v3 + 12);
      v8 = *(a1 + 16);
    }

    v9 = ((*(v3 + 288) - *(v3 + 280)) >> 2) + ((*(v3 + 264) - *(v3 + 256)) >> 2);
    if (v2 / (v4 << 18) < v9)
    {
      v9 = v2 / (v4 << 18);
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    memset(v21, 0, sizeof(v21));
    v10 = *(v3 + 304);
    v11 = v3;
    v12 = *(a1 + 8);
    if ((v8 + v9 - 1) / v9 >= *(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v14 = **(v11 + 256);
    v15 = **(v11 + 280);
    operator new();
  }

  if (v4 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v18 = MEMORY[0x25F851380](v17, *(a1 + 16));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v19, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v21);
    MEMORY[0x25F851100](exception, v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, *(v3 + 12));
  memcpy(__dst, *a1, v2);
  result = memcpy(*(a1 + 8), __dst, v2);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2CC5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<signed char,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v118[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v93 = v8;
  v94 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >> 24)
  {
    v13 = 0x800000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v113 = 0;
  v114 = 0;
  __p = 0;
  v110 = 0;
  v111 = 0;
  v16 = 1;
  v107 = v13;
  v105 = v14 / v13;
  v100 = a7;
  v98 = (a4 + v10 - 1) / v10;
  v99 = a4;
  v97 = v14;
  do
  {
    v96 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v107 <= v14)
        {
          v102 = v17;
          v20 = 0;
          v103 = v15;
          v104 = v9;
          v106 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v107;
            v23 = v20 * v107 + v106;
            v24 = ++v20 * v107;
            v25 = v20 * v107 + v106;
            v26 = v113;
            if (v113 >= v114)
            {
              v30 = __src;
              v31 = v113 - __src;
              v32 = (v113 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v114 - __src;
              if ((v114 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v113 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v107 + v106;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v113 = v29;
              v114 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v107 + v106;
              }

              else
              {
                v28 = v18;
              }

              *v113 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v113 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v110;
            if (v110 >= v111)
            {
              v47 = __p;
              v48 = v110 - __p;
              v49 = (v110 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v111 - __p;
              if ((v111 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v110 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v110 = v46;
              v111 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v110 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v110 = v46;
          }

          while (v20 < v105);
          LODWORD(v10) = *(a1 + 12);
          a7 = v100;
          v11 = v98;
          a4 = v99;
          v15 = v103;
          v9 = v104;
          v14 = v97;
          v17 = v102;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v96 & 1) != 0);
  v118[0] = a2;
  v118[1] = a2 + v107;
  v117[0] = 0;
  v117[1] = 0;
  v116[0] = 0;
  v116[1] = 0;
  v58 = __src;
  if (v113 == __src)
  {
    v69 = v105 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v105 > 1;
    if (v105 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v115.__state_) = v94;
      state = v108.__state_;
      v108.__state_ = 0;
      v69 = v63;
      v115.__state_ = v117[v63];
      v117[v63] = state;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v113 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v115.__state_) = v93;
      }

      else
      {
        v70 = v118[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v115.__state_) = v93;
      }

      v79 = v108.__state_;
      v108.__state_ = 0;
      v115.__state_ = v116[v63];
      v116[v63] = v79;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v113 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v117[v60]);
        std::__assoc_sub_state::wait(v116[v60]);
        v58 = __src;
        v80 = (v113 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + v82);
            v85 = v118[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84++ += v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v117[v69]);
  std::__assoc_sub_state::wait(v116[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v116[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v117[j]);
  }

  if (__p)
  {
    v110 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v113 = __src;
    operator delete(__src);
  }

  v91 = *MEMORY[0x277D85DE8];
}

void sub_25A2CCCFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(signed char *,signed char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>),mlx::core::distributed::ring::RingGroup*,signed char *,signed char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(signed char *,signed char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>),mlx::core::distributed::ring::RingGroup*,signed char *,signed char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB0B8;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(signed char *,signed char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>),mlx::core::distributed::ring::RingGroup*,signed char *,signed char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(signed char *,signed char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>),mlx::core::distributed::ring::RingGroup*,signed char *,signed char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15SumOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEB110;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15SumOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEB110;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15SumOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEB110;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15SumOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15SumOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaSA_miiiNS8_12_GLOBAL__N_15SumOpIaEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPaS8_miiiNS6_12_GLOBAL__N_15SumOpIaEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<signed char,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<signed char,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB1A0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<signed char,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<signed char,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<signed char>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIsNS8_12_GLOBAL__N_15SumOpIsEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB298;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIsNS8_12_GLOBAL__N_15SumOpIsEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIsNS8_12_GLOBAL__N_15SumOpIsEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<short,mlx::core::distributed::ring::anonymous namespace::SumOp<short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<short>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 2 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    if (*a1 != v7)
    {
      memcpy(v7, v8, 2 * v2);
      v5 = *(v3 + 12);
      v2 = *(a1 + 16);
    }

    v9 = ((*(v3 + 288) - *(v3 + 280)) >> 2) + ((*(v3 + 264) - *(v3 + 256)) >> 2);
    if (v4 / (v5 << 18) < v9)
    {
      v9 = v4 / (v5 << 18);
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    memset(v21, 0, sizeof(v21));
    v10 = *(v3 + 304);
    v11 = v3;
    v12 = *(a1 + 8);
    if ((v2 + v9 - 1) / v9 >= *(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v14 = **(v11 + 256);
    v15 = **(v11 + 280);
    operator new();
  }

  if (2 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v18 = MEMORY[0x25F851380](v17, *(a1 + 16));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v19, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v21);
    MEMORY[0x25F851100](exception, v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 2 * v5);
  memcpy(__dst, *a1, v4);
  result = memcpy(*(a1 + 8), __dst, v4);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2CD7E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<short,mlx::core::distributed::ring::anonymous namespace::SumOp<short>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v118[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v93 = v8;
  v94 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x800000)
  {
    v13 = 0x400000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v113 = 0;
  v114 = 0;
  __p = 0;
  v110 = 0;
  v111 = 0;
  v16 = 1;
  v107 = v13;
  v105 = v14 / v13;
  v100 = a7;
  v98 = (a4 + v10 - 1) / v10;
  v99 = a4;
  v97 = v14;
  do
  {
    v96 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v107 <= v14)
        {
          v102 = v17;
          v20 = 0;
          v103 = v15;
          v104 = v9;
          v106 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v107;
            v23 = v20 * v107 + v106;
            v24 = ++v20 * v107;
            v25 = v20 * v107 + v106;
            v26 = v113;
            if (v113 >= v114)
            {
              v30 = __src;
              v31 = v113 - __src;
              v32 = (v113 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v114 - __src;
              if ((v114 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v113 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v107 + v106;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v113 = v29;
              v114 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v107 + v106;
              }

              else
              {
                v28 = v18;
              }

              *v113 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v113 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v110;
            if (v110 >= v111)
            {
              v47 = __p;
              v48 = v110 - __p;
              v49 = (v110 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v111 - __p;
              if ((v111 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v110 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v110 = v46;
              v111 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v110 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v110 = v46;
          }

          while (v20 < v105);
          LODWORD(v10) = *(a1 + 12);
          a7 = v100;
          v11 = v98;
          a4 = v99;
          v15 = v103;
          v9 = v104;
          v14 = v97;
          v17 = v102;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v96 & 1) != 0);
  v118[0] = a2;
  v118[1] = a2 + 2 * v107;
  v117[0] = 0;
  v117[1] = 0;
  v116[0] = 0;
  v116[1] = 0;
  v58 = __src;
  if (v113 == __src)
  {
    v69 = v105 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v105 > 1;
    if (v105 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v115.__state_) = v94;
      state = v108.__state_;
      v108.__state_ = 0;
      v69 = v63;
      v115.__state_ = v117[v63];
      v117[v63] = state;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v113 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v115.__state_) = v93;
      }

      else
      {
        v70 = v118[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v115.__state_) = v93;
      }

      v79 = v108.__state_;
      v108.__state_ = 0;
      v115.__state_ = v116[v63];
      v116[v63] = v79;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v113 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v117[v60]);
        std::__assoc_sub_state::wait(v116[v60]);
        v58 = __src;
        v80 = (v113 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 2 * v82);
            v85 = v118[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84++ += v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v117[v69]);
  std::__assoc_sub_state::wait(v116[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v116[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v117[j]);
  }

  if (__p)
  {
    v110 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v113 = __src;
    operator delete(__src);
  }

  v91 = *MEMORY[0x277D85DE8];
}

void sub_25A2CDF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(short *,short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<short>),mlx::core::distributed::ring::RingGroup*,short *,short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<short> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(short *,short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<short>),mlx::core::distributed::ring::RingGroup*,short *,short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<short> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB308;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(short *,short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<short>),mlx::core::distributed::ring::RingGroup*,short *,short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<short> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(short *,short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<short>),mlx::core::distributed::ring::RingGroup*,short *,short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<short> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15SumOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEB360;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15SumOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEB360;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15SumOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEB360;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15SumOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15SumOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsSA_miiiNS8_12_GLOBAL__N_15SumOpIsEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPsS8_miiiNS6_12_GLOBAL__N_15SumOpIsEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<short,mlx::core::distributed::ring::anonymous namespace::SumOp<short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<short>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<short,mlx::core::distributed::ring::anonymous namespace::SumOp<short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<short>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB3F0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<short,mlx::core::distributed::ring::anonymous namespace::SumOp<short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<short>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<short,mlx::core::distributed::ring::anonymous namespace::SumOp<short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<short>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIiNS8_12_GLOBAL__N_15SumOpIiEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB4E8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIiNS8_12_GLOBAL__N_15SumOpIiEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIiNS8_12_GLOBAL__N_15SumOpIiEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<int,mlx::core::distributed::ring::anonymous namespace::SumOp<int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<int>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 4 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    if (*a1 != v7)
    {
      memcpy(v7, v8, 4 * v2);
      v5 = *(v3 + 12);
      v2 = *(a1 + 16);
    }

    v9 = ((*(v3 + 288) - *(v3 + 280)) >> 2) + ((*(v3 + 264) - *(v3 + 256)) >> 2);
    if (v4 / (v5 << 18) < v9)
    {
      v9 = v4 / (v5 << 18);
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    memset(v21, 0, sizeof(v21));
    v10 = *(v3 + 304);
    v11 = v3;
    v12 = *(a1 + 8);
    if ((v2 + v9 - 1) / v9 >= *(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v14 = **(v11 + 256);
    v15 = **(v11 + 280);
    operator new();
  }

  if (4 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v18 = MEMORY[0x25F851380](v17, *(a1 + 16));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v19, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v21);
    MEMORY[0x25F851100](exception, v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 4 * v5);
  memcpy(__dst, *a1, v4);
  result = memcpy(*(a1 + 8), __dst, v4);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2CE9E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<int,mlx::core::distributed::ring::anonymous namespace::SumOp<int>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v118[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v93 = v8;
  v94 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x400000)
  {
    v13 = 0x200000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v113 = 0;
  v114 = 0;
  __p = 0;
  v110 = 0;
  v111 = 0;
  v16 = 1;
  v107 = v13;
  v105 = v14 / v13;
  v100 = a7;
  v98 = (a4 + v10 - 1) / v10;
  v99 = a4;
  v97 = v14;
  do
  {
    v96 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v107 <= v14)
        {
          v102 = v17;
          v20 = 0;
          v103 = v15;
          v104 = v9;
          v106 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v107;
            v23 = v20 * v107 + v106;
            v24 = ++v20 * v107;
            v25 = v20 * v107 + v106;
            v26 = v113;
            if (v113 >= v114)
            {
              v30 = __src;
              v31 = v113 - __src;
              v32 = (v113 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v114 - __src;
              if ((v114 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v113 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v107 + v106;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v113 = v29;
              v114 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v107 + v106;
              }

              else
              {
                v28 = v18;
              }

              *v113 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v113 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v110;
            if (v110 >= v111)
            {
              v47 = __p;
              v48 = v110 - __p;
              v49 = (v110 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v111 - __p;
              if ((v111 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v110 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v110 = v46;
              v111 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v110 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v110 = v46;
          }

          while (v20 < v105);
          LODWORD(v10) = *(a1 + 12);
          a7 = v100;
          v11 = v98;
          a4 = v99;
          v15 = v103;
          v9 = v104;
          v14 = v97;
          v17 = v102;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v96 & 1) != 0);
  v118[0] = a2;
  v118[1] = a2 + 4 * v107;
  v117[0] = 0;
  v117[1] = 0;
  v116[0] = 0;
  v116[1] = 0;
  v58 = __src;
  if (v113 == __src)
  {
    v69 = v105 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v105 > 1;
    if (v105 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v115.__state_) = v94;
      state = v108.__state_;
      v108.__state_ = 0;
      v69 = v63;
      v115.__state_ = v117[v63];
      v117[v63] = state;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v113 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v115.__state_) = v93;
      }

      else
      {
        v70 = v118[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v115.__state_) = v93;
      }

      v79 = v108.__state_;
      v108.__state_ = 0;
      v115.__state_ = v116[v63];
      v116[v63] = v79;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v113 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v117[v60]);
        std::__assoc_sub_state::wait(v116[v60]);
        v58 = __src;
        v80 = (v113 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 4 * v82);
            v85 = v118[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84++ += v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v117[v69]);
  std::__assoc_sub_state::wait(v116[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v116[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v117[j]);
  }

  if (__p)
  {
    v110 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v113 = __src;
    operator delete(__src);
  }

  v91 = *MEMORY[0x277D85DE8];
}

void sub_25A2CF104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(int *,int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<int>),mlx::core::distributed::ring::RingGroup*,int *,int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<int> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(int *,int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<int>),mlx::core::distributed::ring::RingGroup*,int *,int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<int> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB558;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(int *,int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<int>),mlx::core::distributed::ring::RingGroup*,int *,int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<int> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(int *,int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<int>),mlx::core::distributed::ring::RingGroup*,int *,int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<int> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15SumOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEB5B0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15SumOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEB5B0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15SumOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEB5B0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15SumOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15SumOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiSA_miiiNS8_12_GLOBAL__N_15SumOpIiEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPiS8_miiiNS6_12_GLOBAL__N_15SumOpIiEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<int,mlx::core::distributed::ring::anonymous namespace::SumOp<int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<int>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<int,mlx::core::distributed::ring::anonymous namespace::SumOp<int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<int>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB640;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<int,mlx::core::distributed::ring::anonymous namespace::SumOp<int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<int>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<int,mlx::core::distributed::ring::anonymous namespace::SumOp<int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<int>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIxNS8_12_GLOBAL__N_15SumOpIxEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB738;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIxNS8_12_GLOBAL__N_15SumOpIxEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIxNS8_12_GLOBAL__N_15SumOpIxEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<long long,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 8 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    if (*a1 != v7)
    {
      memcpy(v7, v8, 8 * v2);
      v5 = *(v3 + 12);
      v2 = *(a1 + 16);
    }

    v9 = ((*(v3 + 288) - *(v3 + 280)) >> 2) + ((*(v3 + 264) - *(v3 + 256)) >> 2);
    if (v4 / (v5 << 18) < v9)
    {
      v9 = v4 / (v5 << 18);
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    memset(v21, 0, sizeof(v21));
    v10 = *(v3 + 304);
    v11 = v3;
    v12 = *(a1 + 8);
    if ((v2 + v9 - 1) / v9 >= *(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v14 = **(v11 + 256);
    v15 = **(v11 + 280);
    operator new();
  }

  if (8 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v18 = MEMORY[0x25F851380](v17, *(a1 + 16));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v19, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v21);
    MEMORY[0x25F851100](exception, v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 8 * v5);
  memcpy(__dst, *a1, v4);
  result = memcpy(*(a1 + 8), __dst, v4);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2CFBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<long long,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v118[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v93 = v8;
  v94 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x200000)
  {
    v13 = 0x100000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v113 = 0;
  v114 = 0;
  __p = 0;
  v110 = 0;
  v111 = 0;
  v16 = 1;
  v107 = v13;
  v105 = v14 / v13;
  v100 = a7;
  v98 = (a4 + v10 - 1) / v10;
  v99 = a4;
  v97 = v14;
  do
  {
    v96 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v107 <= v14)
        {
          v102 = v17;
          v20 = 0;
          v103 = v15;
          v104 = v9;
          v106 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v107;
            v23 = v20 * v107 + v106;
            v24 = ++v20 * v107;
            v25 = v20 * v107 + v106;
            v26 = v113;
            if (v113 >= v114)
            {
              v30 = __src;
              v31 = v113 - __src;
              v32 = (v113 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v114 - __src;
              if ((v114 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v113 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v107 + v106;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v113 = v29;
              v114 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v107 + v106;
              }

              else
              {
                v28 = v18;
              }

              *v113 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v113 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v110;
            if (v110 >= v111)
            {
              v47 = __p;
              v48 = v110 - __p;
              v49 = (v110 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v111 - __p;
              if ((v111 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v110 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v110 = v46;
              v111 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v110 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v110 = v46;
          }

          while (v20 < v105);
          LODWORD(v10) = *(a1 + 12);
          a7 = v100;
          v11 = v98;
          a4 = v99;
          v15 = v103;
          v9 = v104;
          v14 = v97;
          v17 = v102;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v96 & 1) != 0);
  v118[0] = a2;
  v118[1] = a2 + 8 * v107;
  v117[0] = 0;
  v117[1] = 0;
  v116[0] = 0;
  v116[1] = 0;
  v58 = __src;
  if (v113 == __src)
  {
    v69 = v105 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v105 > 1;
    if (v105 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v115.__state_) = v94;
      state = v108.__state_;
      v108.__state_ = 0;
      v69 = v63;
      v115.__state_ = v117[v63];
      v117[v63] = state;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v113 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v115.__state_) = v93;
      }

      else
      {
        v70 = v118[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v115.__state_) = v93;
      }

      v79 = v108.__state_;
      v108.__state_ = 0;
      v115.__state_ = v116[v63];
      v116[v63] = v79;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v113 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v117[v60]);
        std::__assoc_sub_state::wait(v116[v60]);
        v58 = __src;
        v80 = (v113 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 8 * v82);
            v85 = v118[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84++ += v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v117[v69]);
  std::__assoc_sub_state::wait(v116[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v116[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v117[j]);
  }

  if (__p)
  {
    v110 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v113 = __src;
    operator delete(__src);
  }

  v91 = *MEMORY[0x277D85DE8];
}

void sub_25A2D0308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(long long *,long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>),mlx::core::distributed::ring::RingGroup*,long long *,long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<long long> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(long long *,long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>),mlx::core::distributed::ring::RingGroup*,long long *,long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<long long> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB7A8;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(long long *,long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>),mlx::core::distributed::ring::RingGroup*,long long *,long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<long long> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(long long *,long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>),mlx::core::distributed::ring::RingGroup*,long long *,long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<long long> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15SumOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEB800;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15SumOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEB800;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15SumOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEB800;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15SumOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15SumOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxSA_miiiNS8_12_GLOBAL__N_15SumOpIxEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPxS8_miiiNS6_12_GLOBAL__N_15SumOpIxEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<long long,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<long long,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB890;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<long long,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<long long,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<long long>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIhNS8_12_GLOBAL__N_15SumOpIhEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB988;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIhNS8_12_GLOBAL__N_15SumOpIhEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIhNS8_12_GLOBAL__N_15SumOpIhEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned char,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(v3 + 12);
  if (v2 >= v4)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 == v6)
    {
      v8 = v2;
    }

    else
    {
      memcpy(v6, v7, v2);
      v4 = *(v3 + 12);
      v8 = *(a1 + 16);
    }

    v9 = ((*(v3 + 288) - *(v3 + 280)) >> 2) + ((*(v3 + 264) - *(v3 + 256)) >> 2);
    if (v2 / (v4 << 18) < v9)
    {
      v9 = v2 / (v4 << 18);
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    memset(v21, 0, sizeof(v21));
    v10 = *(v3 + 304);
    v11 = v3;
    v12 = *(a1 + 8);
    if ((v8 + v9 - 1) / v9 >= *(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v14 = **(v11 + 256);
    v15 = **(v11 + 280);
    operator new();
  }

  if (v4 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v18 = MEMORY[0x25F851380](v17, *(a1 + 16));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v19, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v21);
    MEMORY[0x25F851100](exception, v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, *(v3 + 12));
  memcpy(__dst, *a1, v2);
  result = memcpy(*(a1 + 8), __dst, v2);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2D0DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<unsigned char,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v118[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v93 = v8;
  v94 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >> 24)
  {
    v13 = 0x800000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v113 = 0;
  v114 = 0;
  __p = 0;
  v110 = 0;
  v111 = 0;
  v16 = 1;
  v107 = v13;
  v105 = v14 / v13;
  v100 = a7;
  v98 = (a4 + v10 - 1) / v10;
  v99 = a4;
  v97 = v14;
  do
  {
    v96 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v107 <= v14)
        {
          v102 = v17;
          v20 = 0;
          v103 = v15;
          v104 = v9;
          v106 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v107;
            v23 = v20 * v107 + v106;
            v24 = ++v20 * v107;
            v25 = v20 * v107 + v106;
            v26 = v113;
            if (v113 >= v114)
            {
              v30 = __src;
              v31 = v113 - __src;
              v32 = (v113 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v114 - __src;
              if ((v114 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v113 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v107 + v106;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v113 = v29;
              v114 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v107 + v106;
              }

              else
              {
                v28 = v18;
              }

              *v113 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v113 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v110;
            if (v110 >= v111)
            {
              v47 = __p;
              v48 = v110 - __p;
              v49 = (v110 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v111 - __p;
              if ((v111 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v110 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v110 = v46;
              v111 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v110 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v110 = v46;
          }

          while (v20 < v105);
          LODWORD(v10) = *(a1 + 12);
          a7 = v100;
          v11 = v98;
          a4 = v99;
          v15 = v103;
          v9 = v104;
          v14 = v97;
          v17 = v102;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v96 & 1) != 0);
  v118[0] = a2;
  v118[1] = a2 + v107;
  v117[0] = 0;
  v117[1] = 0;
  v116[0] = 0;
  v116[1] = 0;
  v58 = __src;
  if (v113 == __src)
  {
    v69 = v105 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v105 > 1;
    if (v105 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v115.__state_) = v94;
      state = v108.__state_;
      v108.__state_ = 0;
      v69 = v63;
      v115.__state_ = v117[v63];
      v117[v63] = state;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v113 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v115.__state_) = v93;
      }

      else
      {
        v70 = v118[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v115.__state_) = v93;
      }

      v79 = v108.__state_;
      v108.__state_ = 0;
      v115.__state_ = v116[v63];
      v116[v63] = v79;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v113 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v117[v60]);
        std::__assoc_sub_state::wait(v116[v60]);
        v58 = __src;
        v80 = (v113 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + v82);
            v85 = v118[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84++ += v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v117[v69]);
  std::__assoc_sub_state::wait(v116[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v116[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v117[j]);
  }

  if (__p)
  {
    v110 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v113 = __src;
    operator delete(__src);
  }

  v91 = *MEMORY[0x277D85DE8];
}

void sub_25A2D1508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned char *,unsigned char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>),mlx::core::distributed::ring::RingGroup*,unsigned char *,unsigned char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned char *,unsigned char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>),mlx::core::distributed::ring::RingGroup*,unsigned char *,unsigned char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEB9F8;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned char *,unsigned char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>),mlx::core::distributed::ring::RingGroup*,unsigned char *,unsigned char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned char *,unsigned char *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>),mlx::core::distributed::ring::RingGroup*,unsigned char *,unsigned char *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15SumOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEBA50;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15SumOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEBA50;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15SumOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEBA50;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15SumOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15SumOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhSA_miiiNS8_12_GLOBAL__N_15SumOpIhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPhS8_miiiNS6_12_GLOBAL__N_15SumOpIhEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned char,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned char,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEBAE0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned char,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned char,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned char>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceItNS8_12_GLOBAL__N_15SumOpItEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEBBD8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceItNS8_12_GLOBAL__N_15SumOpItEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceItNS8_12_GLOBAL__N_15SumOpItEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned short,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 2 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    if (*a1 != v7)
    {
      memcpy(v7, v8, 2 * v2);
      v5 = *(v3 + 12);
      v2 = *(a1 + 16);
    }

    v9 = ((*(v3 + 288) - *(v3 + 280)) >> 2) + ((*(v3 + 264) - *(v3 + 256)) >> 2);
    if (v4 / (v5 << 18) < v9)
    {
      v9 = v4 / (v5 << 18);
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    memset(v21, 0, sizeof(v21));
    v10 = *(v3 + 304);
    v11 = v3;
    v12 = *(a1 + 8);
    if ((v2 + v9 - 1) / v9 >= *(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v14 = **(v11 + 256);
    v15 = **(v11 + 280);
    operator new();
  }

  if (2 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v18 = MEMORY[0x25F851380](v17, *(a1 + 16));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v19, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v21);
    MEMORY[0x25F851100](exception, v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 2 * v5);
  memcpy(__dst, *a1, v4);
  result = memcpy(*(a1 + 8), __dst, v4);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2D1FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<unsigned short,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v118[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v93 = v8;
  v94 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x800000)
  {
    v13 = 0x400000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v113 = 0;
  v114 = 0;
  __p = 0;
  v110 = 0;
  v111 = 0;
  v16 = 1;
  v107 = v13;
  v105 = v14 / v13;
  v100 = a7;
  v98 = (a4 + v10 - 1) / v10;
  v99 = a4;
  v97 = v14;
  do
  {
    v96 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v107 <= v14)
        {
          v102 = v17;
          v20 = 0;
          v103 = v15;
          v104 = v9;
          v106 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v107;
            v23 = v20 * v107 + v106;
            v24 = ++v20 * v107;
            v25 = v20 * v107 + v106;
            v26 = v113;
            if (v113 >= v114)
            {
              v30 = __src;
              v31 = v113 - __src;
              v32 = (v113 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v114 - __src;
              if ((v114 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v113 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v107 + v106;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v113 = v29;
              v114 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v107 + v106;
              }

              else
              {
                v28 = v18;
              }

              *v113 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v113 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v110;
            if (v110 >= v111)
            {
              v47 = __p;
              v48 = v110 - __p;
              v49 = (v110 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v111 - __p;
              if ((v111 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v110 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v110 = v46;
              v111 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v110 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v110 = v46;
          }

          while (v20 < v105);
          LODWORD(v10) = *(a1 + 12);
          a7 = v100;
          v11 = v98;
          a4 = v99;
          v15 = v103;
          v9 = v104;
          v14 = v97;
          v17 = v102;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v96 & 1) != 0);
  v118[0] = a2;
  v118[1] = a2 + 2 * v107;
  v117[0] = 0;
  v117[1] = 0;
  v116[0] = 0;
  v116[1] = 0;
  v58 = __src;
  if (v113 == __src)
  {
    v69 = v105 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v105 > 1;
    if (v105 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v115.__state_) = v94;
      state = v108.__state_;
      v108.__state_ = 0;
      v69 = v63;
      v115.__state_ = v117[v63];
      v117[v63] = state;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v113 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v115.__state_) = v93;
      }

      else
      {
        v70 = v118[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v115.__state_) = v93;
      }

      v79 = v108.__state_;
      v108.__state_ = 0;
      v115.__state_ = v116[v63];
      v116[v63] = v79;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v113 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v117[v60]);
        std::__assoc_sub_state::wait(v116[v60]);
        v58 = __src;
        v80 = (v113 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 2 * v82);
            v85 = v118[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84++ += v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v117[v69]);
  std::__assoc_sub_state::wait(v116[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v116[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v117[j]);
  }

  if (__p)
  {
    v110 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v113 = __src;
    operator delete(__src);
  }

  v91 = *MEMORY[0x277D85DE8];
}

void sub_25A2D270C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned short *,unsigned short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>),mlx::core::distributed::ring::RingGroup*,unsigned short *,unsigned short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned short *,unsigned short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>),mlx::core::distributed::ring::RingGroup*,unsigned short *,unsigned short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEBC48;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned short *,unsigned short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>),mlx::core::distributed::ring::RingGroup*,unsigned short *,unsigned short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned short *,unsigned short *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>),mlx::core::distributed::ring::RingGroup*,unsigned short *,unsigned short *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPtSA_miiiNS8_12_GLOBAL__N_15SumOpItEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEBCA0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPtSA_miiiNS8_12_GLOBAL__N_15SumOpItEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEBCA0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPtSA_miiiNS8_12_GLOBAL__N_15SumOpItEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEBCA0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPtSA_miiiNS8_12_GLOBAL__N_15SumOpItEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPtSA_miiiNS8_12_GLOBAL__N_15SumOpItEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPtSA_miiiNS8_12_GLOBAL__N_15SumOpItEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPtS8_miiiNS6_12_GLOBAL__N_15SumOpItEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned short,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned short,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEBD30;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned short,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned short,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned short>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIjNS8_12_GLOBAL__N_15SumOpIjEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEBE28;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIjNS8_12_GLOBAL__N_15SumOpIjEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIjNS8_12_GLOBAL__N_15SumOpIjEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 4 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    if (*a1 != v7)
    {
      memcpy(v7, v8, 4 * v2);
      v5 = *(v3 + 12);
      v2 = *(a1 + 16);
    }

    v9 = ((*(v3 + 288) - *(v3 + 280)) >> 2) + ((*(v3 + 264) - *(v3 + 256)) >> 2);
    if (v4 / (v5 << 18) < v9)
    {
      v9 = v4 / (v5 << 18);
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    memset(v21, 0, sizeof(v21));
    v10 = *(v3 + 304);
    v11 = v3;
    v12 = *(a1 + 8);
    if ((v2 + v9 - 1) / v9 >= *(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v14 = **(v11 + 256);
    v15 = **(v11 + 280);
    operator new();
  }

  if (4 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v18 = MEMORY[0x25F851380](v17, *(a1 + 16));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v19, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v21);
    MEMORY[0x25F851100](exception, v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 4 * v5);
  memcpy(__dst, *a1, v4);
  result = memcpy(*(a1 + 8), __dst, v4);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2D31F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<unsigned int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v118[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v93 = v8;
  v94 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x400000)
  {
    v13 = 0x200000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v113 = 0;
  v114 = 0;
  __p = 0;
  v110 = 0;
  v111 = 0;
  v16 = 1;
  v107 = v13;
  v105 = v14 / v13;
  v100 = a7;
  v98 = (a4 + v10 - 1) / v10;
  v99 = a4;
  v97 = v14;
  do
  {
    v96 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v107 <= v14)
        {
          v102 = v17;
          v20 = 0;
          v103 = v15;
          v104 = v9;
          v106 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v107;
            v23 = v20 * v107 + v106;
            v24 = ++v20 * v107;
            v25 = v20 * v107 + v106;
            v26 = v113;
            if (v113 >= v114)
            {
              v30 = __src;
              v31 = v113 - __src;
              v32 = (v113 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v114 - __src;
              if ((v114 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v113 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v107 + v106;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v113 = v29;
              v114 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v107 + v106;
              }

              else
              {
                v28 = v18;
              }

              *v113 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v113 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v110;
            if (v110 >= v111)
            {
              v47 = __p;
              v48 = v110 - __p;
              v49 = (v110 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v111 - __p;
              if ((v111 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v110 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v110 = v46;
              v111 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v110 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v110 = v46;
          }

          while (v20 < v105);
          LODWORD(v10) = *(a1 + 12);
          a7 = v100;
          v11 = v98;
          a4 = v99;
          v15 = v103;
          v9 = v104;
          v14 = v97;
          v17 = v102;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v96 & 1) != 0);
  v118[0] = a2;
  v118[1] = a2 + 4 * v107;
  v117[0] = 0;
  v117[1] = 0;
  v116[0] = 0;
  v116[1] = 0;
  v58 = __src;
  if (v113 == __src)
  {
    v69 = v105 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v105 > 1;
    if (v105 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v115.__state_) = v94;
      state = v108.__state_;
      v108.__state_ = 0;
      v69 = v63;
      v115.__state_ = v117[v63];
      v117[v63] = state;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v113 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v115.__state_) = v93;
      }

      else
      {
        v70 = v118[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v115.__state_) = v93;
      }

      v79 = v108.__state_;
      v108.__state_ = 0;
      v115.__state_ = v116[v63];
      v116[v63] = v79;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v113 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v117[v60]);
        std::__assoc_sub_state::wait(v116[v60]);
        v58 = __src;
        v80 = (v113 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 4 * v82);
            v85 = v118[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84++ += v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v117[v69]);
  std::__assoc_sub_state::wait(v116[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v116[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v117[j]);
  }

  if (__p)
  {
    v110 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v113 = __src;
    operator delete(__src);
  }

  v91 = *MEMORY[0x277D85DE8];
}

void sub_25A2D3910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned int *,unsigned int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>),mlx::core::distributed::ring::RingGroup*,unsigned int *,unsigned int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned int *,unsigned int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>),mlx::core::distributed::ring::RingGroup*,unsigned int *,unsigned int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEBE98;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned int *,unsigned int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>),mlx::core::distributed::ring::RingGroup*,unsigned int *,unsigned int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned int *,unsigned int *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>),mlx::core::distributed::ring::RingGroup*,unsigned int *,unsigned int *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPjSA_miiiNS8_12_GLOBAL__N_15SumOpIjEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BEBEF0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPjSA_miiiNS8_12_GLOBAL__N_15SumOpIjEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BEBEF0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPjSA_miiiNS8_12_GLOBAL__N_15SumOpIjEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BEBEF0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPjSA_miiiNS8_12_GLOBAL__N_15SumOpIjEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPjSA_miiiNS8_12_GLOBAL__N_15SumOpIjEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPjSA_miiiNS8_12_GLOBAL__N_15SumOpIjEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPjS8_miiiNS6_12_GLOBAL__N_15SumOpIjEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEBF80;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned int,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned int>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIyNS8_12_GLOBAL__N_15SumOpIyEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BEC078;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIyNS8_12_GLOBAL__N_15SumOpIyEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIyNS8_12_GLOBAL__N_15SumOpIyEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned long long,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 8 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    if (*a1 != v7)
    {
      memcpy(v7, v8, 8 * v2);
      v5 = *(v3 + 12);
      v2 = *(a1 + 16);
    }

    v9 = ((*(v3 + 288) - *(v3 + 280)) >> 2) + ((*(v3 + 264) - *(v3 + 256)) >> 2);
    if (v4 / (v5 << 18) < v9)
    {
      v9 = v4 / (v5 << 18);
    }

    if (v9 <= 1)
    {
      v9 = 1;
    }

    memset(v21, 0, sizeof(v21));
    v10 = *(v3 + 304);
    v11 = v3;
    v12 = *(a1 + 8);
    if ((v2 + v9 - 1) / v9 >= *(a1 + 16))
    {
      v13 = *(a1 + 16);
    }

    v14 = **(v11 + 256);
    v15 = **(v11 + 280);
    operator new();
  }

  if (8 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v18 = MEMORY[0x25F851380](v17, *(a1 + 16));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v19, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v21);
    MEMORY[0x25F851100](exception, v21);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 8 * v5);
  memcpy(__dst, *a1, v4);
  result = memcpy(*(a1 + 8), __dst, v4);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A2D43F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<unsigned long long,mlx::core::distributed::ring::anonymous namespace::SumOp<unsigned long long>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v118[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v93 = v8;
  v94 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x200000)
  {
    v13 = 0x100000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v113 = 0;
  v114 = 0;
  __p = 0;
  v110 = 0;
  v111 = 0;
  v16 = 1;
  v107 = v13;
  v105 = v14 / v13;
  v100 = a7;
  v98 = (a4 + v10 - 1) / v10;
  v99 = a4;
  v97 = v14;
  do
  {
    v96 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v107 <= v14)
        {
          v102 = v17;
          v20 = 0;
          v103 = v15;
          v104 = v9;
          v106 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v107;
            v23 = v20 * v107 + v106;
            v24 = ++v20 * v107;
            v25 = v20 * v107 + v106;
            v26 = v113;
            if (v113 >= v114)
            {
              v30 = __src;
              v31 = v113 - __src;
              v32 = (v113 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v114 - __src;
              if ((v114 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v113 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v107 + v106;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v113 = v29;
              v114 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v107 + v106;
              }

              else
              {
                v28 = v18;
              }

              *v113 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v113 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v110;
            if (v110 >= v111)
            {
              v47 = __p;
              v48 = v110 - __p;
              v49 = (v110 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v111 - __p;
              if ((v111 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v110 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v110 = v46;
              v111 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v110 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v110 = v46;
          }

          while (v20 < v105);
          LODWORD(v10) = *(a1 + 12);
          a7 = v100;
          v11 = v98;
          a4 = v99;
          v15 = v103;
          v9 = v104;
          v14 = v97;
          v17 = v102;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v96 & 1) != 0);
  v118[0] = a2;
  v118[1] = a2 + 8 * v107;
  v117[0] = 0;
  v117[1] = 0;
  v116[0] = 0;
  v116[1] = 0;
  v58 = __src;
  if (v113 == __src)
  {
    v69 = v105 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v105 > 1;
    if (v105 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v115.__state_) = v94;
      state = v108.__state_;
      v108.__state_ = 0;
      v69 = v63;
      v115.__state_ = v117[v63];
      v117[v63] = state;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v113 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v115.__state_) = v93;
      }

      else
      {
        v70 = v118[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v115.__state_) = v93;
      }

      v79 = v108.__state_;
      v108.__state_ = 0;
      v115.__state_ = v116[v63];
      v116[v63] = v79;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v113 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v117[v60]);
        std::__assoc_sub_state::wait(v116[v60]);
        v58 = __src;
        v80 = (v113 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 8 * v82);
            v85 = v118[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              *v84++ += v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v117[v69]);
  std::__assoc_sub_state::wait(v116[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v116[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v117[j]);
  }

  if (__p)
  {
    v110 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v113 = __src;
    operator delete(__src);
  }

  v91 = *MEMORY[0x277D85DE8];
}